import { Test, TestingModule } from '@nestjs/testing';
import { IllTypesController } from './ill_types.controller';
import { IllTypesService } from './ill_types.service';

describe('IllTypesController', () => {
  let controller: IllTypesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [IllTypesController],
      providers: [IllTypesService],
    }).compile();

    controller = module.get<IllTypesController>(IllTypesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
