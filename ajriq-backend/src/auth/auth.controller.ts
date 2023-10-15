import { UsersService } from './../users/users.service';
import { GoogleOAuthGuard } from '../google-oauth.guard';
import {
  Body,
  Controller,
  Get,
  Post,
  Request,
  UseGuards,
} from '@nestjs/common';

import { AuthService } from './auth.service';
import { RegisterAuthDto } from './dto/register-auth.dto';
import { LoginAuthDto } from './dto/login-auth.dto';
import { ApiOperation } from '@nestjs/swagger';

@Controller('auth')
export class AuthController {
  constructor(
    private readonly authService: AuthService,
    private readonly userService: UsersService,
  ) {}

  @Get()
  @UseGuards(GoogleOAuthGuard)
  async googleAuth(@Request() req) {}

  @Get('google-redirect')
  @UseGuards(GoogleOAuthGuard)
  googleAuthRedirect(@Request() req) {
    return this.authService.googleLogin(req);
  }

  @Post()
  @ApiOperation({
    summary: 'Get users',
  })
  async signUp(@Body() registerAuthDto: RegisterAuthDto) {
    return this.authService.signUp(registerAuthDto);
  }

  @Post('sign-in')
  @ApiOperation({
    summary: 'Get users',
  })
  async signIn(@Body() loginAuthDto: LoginAuthDto) {
    return this.authService.signIn(loginAuthDto);
  }
}
