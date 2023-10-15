import { RegisterAuthDto } from './dto/register-auth.dto';
import { JwtService } from '@nestjs/jwt';
import { UsersService } from './../users/users.service';
import {
  HttpException,
  HttpStatus,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import * as bcrypt from 'bcrypt';
import { LoginAuthDto } from './dto/login-auth.dto';
import { User } from 'src/users/models/user.model';

@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private readonly jwtService: JwtService,
  ) {}

  googleLogin(req) {
    if (!req.user) {
      return 'No user from google';
    }

    return this.signUp(req.user);
  }

  async signUp(registerAuthDto: RegisterAuthDto) {
    console.log(1);

    if (registerAuthDto.username) {
      const oldUser = await this.usersService.getUserByUsername(
        registerAuthDto.username,
      );

      if (oldUser) {
        throw new HttpException(
          'Username already taken',
          HttpStatus.BAD_REQUEST,
        );
      }
    }
    let hashedPassword = 'google';
    if (registerAuthDto.password) {
      hashedPassword = await bcrypt.hash(registerAuthDto.password, 10);
    }

    const user = await this.usersService.create({
      ...registerAuthDto,
      password: hashedPassword,
    });
    return this.generateToken(user);
  }

  async signIn(loginAuthDto: LoginAuthDto) {
    const user = await this.validateUser(loginAuthDto);
    if (!user) {
      throw new HttpException('User not found', HttpStatus.NOT_FOUND);
    }
    return this.generateToken(user);
  }

  private async validateUser(loginAuthDto: LoginAuthDto) {
    const user = await this.usersService.getUserByUsername(
      loginAuthDto.username,
    );
    if (!user) {
      throw new UnauthorizedException('Username not found');
    }

    const validPassword = await bcrypt.compare(
      loginAuthDto.password,
      user.password,
    );

    if (!validPassword) {
      throw new UnauthorizedException('Passwords do not match');
    }
    return user;
  }

  private async generateToken(user: User) {
    const payload = { username: user.username, id: user.id };
    const accessToken = this.jwtService.sign(payload, {
      expiresIn: 15000,
    });

    const refreshToken = this.jwtService.sign(payload, {
      expiresIn: process.env.REFRESH_TIME,
      secret: process.env.REFRESH_SECRET,
    });

    return {
      accessToken,
      refreshToken,
    };
  }
}
