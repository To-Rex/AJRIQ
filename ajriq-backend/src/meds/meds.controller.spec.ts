import { Test, TestingModule } from '@nestjs/testing';
import { MedsController } from './meds.controller';
import { MedsService } from './meds.service';

describe('MedsController', () => {
  let controller: MedsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [MedsController],
      providers: [MedsService],
    }).compile();

    controller = module.get<MedsController>(MedsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
