import { PartialType } from '@nestjs/mapped-types';
import { CreateMedDto } from './create-med.dto';

export class UpdateMedDto extends PartialType(CreateMedDto) {}
