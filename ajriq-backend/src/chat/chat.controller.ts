import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { ChatService } from './chat.service';
import { CreateChatDto } from './dto/create-chat.dto';
import { UpdateChatDto } from './dto/update-chat.dto';
import { ApiOperation } from '@nestjs/swagger';

@Controller('chat')
export class ChatController {
  constructor(private readonly chatService: ChatService) {}

  @Post()
  @ApiOperation({
    summary: 'Get users',
  })
  create(@Body() createChatDto: CreateChatDto) {
    return this.chatService.create(createChatDto);
  }

  @Get()
  @ApiOperation({
    summary: 'Get users',
  })
  findAll() {
    return this.chatService.findAll();
  }

  @Get(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  findOne(@Param('id') id: string) {
    return this.chatService.findOne(+id);
  }

  @Patch(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  update(@Param('id') id: string, @Body() updateChatDto: UpdateChatDto) {
    return this.chatService.update(+id, updateChatDto);
  }

  @Delete(':id')
  @ApiOperation({
    summary: 'Get users',
  })
  remove(@Param('id') id: string) {
    return this.chatService.remove(+id);
  }
}
