import { PartialType } from '@nestjs/mapped-types';
import { CreateIllTypeDto } from './create-ill_type.dto';

export class UpdateIllTypeDto extends PartialType(CreateIllTypeDto) {}
