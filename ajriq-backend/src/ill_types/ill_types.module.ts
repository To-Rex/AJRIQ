import { SequelizeModule } from '@nestjs/sequelize';
import { Module } from '@nestjs/common';
import { IllTypesService } from './ill_types.service';
import { IllTypesController } from './ill_types.controller';
import { IllType } from 'src/ill_types/model/ill_type.model';

@Module({
  imports: [SequelizeModule.forFeature([IllType])],
  controllers: [IllTypesController],
  providers: [IllTypesService],
})
export class IllTypesModule {}
