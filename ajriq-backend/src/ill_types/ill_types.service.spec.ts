import { Test, TestingModule } from '@nestjs/testing';
import { IllTypesService } from './ill_types.service';

describe('IllTypesService', () => {
  let service: IllTypesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [IllTypesService],
    }).compile();

    service = module.get<IllTypesService>(IllTypesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
