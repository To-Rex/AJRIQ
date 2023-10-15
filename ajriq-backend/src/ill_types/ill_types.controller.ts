import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { IllTypesService } from './ill_types.service';
import { CreateIllTypeDto } from './dto/create-ill_type.dto';
import { UpdateIllTypeDto } from './dto/update-ill_type.dto';
import { ApiOperation } from '@nestjs/swagger';

@Controller('ill-types')
export class IllTypesController {
  constructor(private readonly illTypesService: IllTypesService) {}

  @Post()
  @ApiOperation({
    summary: 'Get users',
  })
  create(@Body() createIllTypeDto: CreateIllTypeDto) {
    return this.illTypesService.create(createIllTypeDto);
  }

  @Get()
  @ApiOperation({
    summary: 'Get users',
  })
  findAll() {
    return this.illTypesService.findAll();
  }

  @Get(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  findOne(@Param('id') id: string) {
    return this.illTypesService.findOne(+id);
  }

  @Patch(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  update(@Param('id') id: string, @Body() updateIllTypeDto: UpdateIllTypeDto) {
    return this.illTypesService.update(+id, updateIllTypeDto);
  }

  @Delete(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  remove(@Param('id') id: string) {
    return this.illTypesService.remove(+id);
  }
}
