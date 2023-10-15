import { SequelizeModule } from '@nestjs/sequelize';
import { Module } from '@nestjs/common';
import { MedsService } from './meds.service';
import { MedsController } from './meds.controller';
import { Med } from 'src/meds/models/med.model';

@Module({
  imports: [SequelizeModule.forFeature([Med])],
  controllers: [MedsController],
  providers: [MedsService],
})
export class MedsModule {}
