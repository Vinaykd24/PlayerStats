/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { AllPlayersService } from './all-players.service';

describe('AllPlayersService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [AllPlayersService]
    });
  });

  it('should ...', inject([AllPlayersService], (service: AllPlayersService) => {
    expect(service).toBeTruthy();
  }));
});
