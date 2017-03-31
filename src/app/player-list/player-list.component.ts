import { Component, Input , OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

import { AllPlayersService } from '../all-players.service';
import { ShareDataService } from '../share-data.service';
import { Player } from '../player';

@Component({
  selector: 'player-list',
  templateUrl: './player-list.component.html',
  styleUrls: ['./player-list.component.css'],
})



export class PlayerListComponent  {
	playerData:Player[];

	constructor(private AllPlayersService: AllPlayersService, private ShareDataService: ShareDataService, private router: Router ) {
 		this.AllPlayersService.getData().subscribe(data => {
 			this.playerData = data;
 		})
 	}

    selectPlayer(data){
		 this.ShareDataService.setData(data);
		 this.router.navigate(['/player-detail']);
	}
		 
	 
 } 
