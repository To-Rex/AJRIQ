import { Injectable } from '@nestjs/common';
import { CreateIllTypeDto } from './dto/create-ill_type.dto';
import { UpdateIllTypeDto } from './dto/update-ill_type.dto';

@Injectable()
export class IllTypesService {
  create(createIllTypeDto: CreateIllTypeDto) {
    return 'This action adds a new illType';
  }

  findAll() {
    return `This action returns all illTypes`;
  }

  findOne(id: number) {
    return `This action returns a #${id} illType`;
  }

  update(id: number, updateIllTypeDto: UpdateIllTypeDto) {
    return `This action updates a #${id} illType`;
  }

  remove(id: number) {
    return `This action removes a #${id} illType`;
  }
}
