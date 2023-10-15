import { ApiProperty } from '@nestjs/swagger';
import { IsEmail, IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class RegisterAuthDto {
  @IsString()
  @IsNotEmpty()
  @ApiProperty({
    title: 'name',
    example: 'test_1',
  })
  firstName: string;

  @IsString()
  @ApiProperty({
    title: 'name',
    example: 'test_1',
  })
  lastName: string;

  @IsString()
  @IsEmail()
  @ApiProperty({
    title: 'name',
    example: 'test_1@gmail.com',
  })
  email: string;

  @IsString()
  @ApiProperty({
    title: 'name',
    example: 'test_1@gmail.com',
  })
  picture: string;

  @IsString()
  @ApiProperty({
    title: 'name',
    example: 'test_1',
  })
  health_card_id: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty({
    title: 'username',
    example: 'test_1',
  })
  username: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty({
    title: 'password',
    description: 'minimum 8 characters password',
    example: '88888888',
  })
  password: string;

  @IsNumber()
  @IsNotEmpty()
  @ApiProperty({
    title: 'password',
    description: 'minimum 8 characters password',
    example: '88888888',
  })
  phoneNumber: number;
}
