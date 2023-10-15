import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { DoctorsModule } from './doctors/doctors.module';
import { MedsModule } from './meds/meds.module';
import { IllTypesModule } from './ill_types/ill_types.module';
import { AuthModule } from './auth/auth.module';
import { JwtModule } from '@nestjs/jwt';
import { SequelizeModule } from '@nestjs/sequelize';
import { ConfigModule } from '@nestjs/config';
import { User } from 'src/users/models/user.model';
import { Doctor } from 'src/doctors/models/doctor.model';
import { IllType } from 'src/ill_types/model/ill_type.model';
import { Med } from 'src/meds/models/med.model';
import { ChatModule } from './chat/chat.module';

@Module({
  imports: [
    UsersModule,
    DoctorsModule,
    MedsModule,
    IllTypesModule,
    AuthModule,
    ConfigModule.forRoot({
      envFilePath: '.env',
    }),
    SequelizeModule.forRoot({
      dialect: 'postgres',
      host: process.env.POSTGRES_HOST,
      port: Number(process.env.POSTGRES_PORT),
      username: process.env.POSTGRES_USER,
      password: String(process.env.POSTGRES_PASSWORD),
      database: process.env.POSTGRES_DB,
      models: [User, Doctor, IllType, Med],
      autoLoadModels: true,
      logging: (res) => {
        console.log(res);
      },
    }),
    JwtModule.register({
      global: true,
      secret: process.env.ACCESS_SECRET,
      signOptions: { expiresIn: process.env.ACCESS_TIME },
    }),
    ChatModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
