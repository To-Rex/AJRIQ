import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { MedsService } from './meds.service';
import { CreateMedDto } from './dto/create-med.dto';
import { UpdateMedDto } from './dto/update-med.dto';
import { ApiOperation } from '@nestjs/swagger';

@Controller('meds')
export class MedsController {
  constructor(private readonly medsService: MedsService) {}

  @Post()
  @ApiOperation({
    summary: 'Get users',
  })
  create(@Body() createMedDto: CreateMedDto) {
    return this.medsService.create(createMedDto);
  }

  @Get()
  @ApiOperation({
    summary: 'Get users',
  })
  findAll() {
    return this.medsService.findAll();
  }

  @Get(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  findOne(@Param('id') id: string) {
    return this.medsService.findOne(+id);
  }

  @Patch(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  update(@Param('id') id: string, @Body() updateMedDto: UpdateMedDto) {
    return this.medsService.update(+id, updateMedDto);
  }

  @Delete(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  remove(@Param('id') id: string) {
    return this.medsService.remove(+id);
  }
}
