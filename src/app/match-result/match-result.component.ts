import { Component, OnInit } from '@angular/core';
import { AllPlayersService } from '../all-players.service';
import { AllmatchInfo } from '../allmatch-info';

@Component({
  selector: 'app-match-result',
  templateUrl: './match-result.component.html',
  styleUrls: ['./match-result.component.css']
})
export class MatchResultComponent implements OnInit {

  matchResults:AllmatchInfo[];

  constructor(private allPlayersService: AllPlayersService ) {
 		this.allPlayersService.getMatchDetails().subscribe(data => {
 			this.matchResults = data;
       console.log(data);
 		})
 	}

  ngOnInit() {
  }

}
