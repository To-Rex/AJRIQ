import { Test, TestingModule } from '@nestjs/testing';
import { MedsService } from './meds.service';

describe('MedsService', () => {
  let service: MedsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [MedsService],
    }).compile();

    service = module.get<MedsService>(MedsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
