import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { InjectModel } from '@nestjs/sequelize';
import { User } from 'src/users/models/user.model';

@Injectable()
export class UsersService {
  constructor(@InjectModel(User) private userRepo: typeof User) {}

  create(createUserDto: CreateUserDto) {
    return this.userRepo.create(createUserDto);
  }

  findAll() {
    return this.userRepo.findAll({
      include: {
        all: true,
      },
    });
  }

  findOne(id: number) {
    return this.userRepo.findByPk(+id);
  }

  async getUserByUsername(username: string): Promise<User> {
    const user = await this.userRepo.findOne({
      where: { username },
      include: {
        all: true,
        attributes: {
          exclude: ['createdAt', 'updatedAt', 'UserPhoto'],
        },
        through: { attributes: [] },
      },
    });

    return user;
  }

  async update(id: number, updateUserDto: UpdateUserDto) {
    const [updatedCount, updatedUsers] = await this.userRepo.update(
      updateUserDto,
      { where: { id }, returning: true },
    );

    if (updatedCount > 0) return updatedUsers[0];

    throw new NotFoundException('Not found by given id');
  }

  async remove(id: number) {
    const deletedCount = await this.userRepo.destroy({
      where: { id },
    });

    if (deletedCount > 0) return { message: 'deleted successfully' };

    throw new NotFoundException('Not found by given id');
  }
}
