import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { DoctorsService } from './doctors.service';
import { CreateDoctorDto } from './dto/create-doctor.dto';
import { UpdateDoctorDto } from './dto/update-doctor.dto';
import { ApiOperation } from '@nestjs/swagger';

@Controller('doctors')
export class DoctorsController {
  constructor(private readonly doctorsService: DoctorsService) {}

  @Post()
  @ApiOperation({
    summary: 'Get users',
  })
  create(@Body() createDoctorDto: CreateDoctorDto) {
    return this.doctorsService.create(createDoctorDto);
  }

  @Get()
  @ApiOperation({
    summary: 'Get users',
  })
  findAll() {
    return this.doctorsService.findAll();
  }

  @Get(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  findOne(@Param('id') id: string) {
    return this.doctorsService.findOne(+id);
  }

  @Patch(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  update(@Param('id') id: string, @Body() updateDoctorDto: UpdateDoctorDto) {
    return this.doctorsService.update(+id, updateDoctorDto);
  }

  @Delete(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  remove(@Param('id') id: string) {
    return this.doctorsService.remove(+id);
  }
}
