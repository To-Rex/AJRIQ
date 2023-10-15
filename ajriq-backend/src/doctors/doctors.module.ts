import { SequelizeModule } from '@nestjs/sequelize';
import { Module } from '@nestjs/common';
import { DoctorsService } from './doctors.service';
import { DoctorsController } from './doctors.controller';
import { Doctor } from 'src/doctors/models/doctor.model';

@Module({
  imports: [SequelizeModule.forFeature([Doctor])],
  controllers: [DoctorsController],
  providers: [DoctorsService],
})
export class DoctorsModule {}
