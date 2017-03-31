import { Component, Input, OnInit } from '@angular/core';
import {Http,Response} from '@angular/http';

import { PurpleCapPipe } from '../purple-cap.pipe';
import {AllPlayersService } from '../all-players.service';
import {ShareDataService } from '../share-data.service';
import { Player } from '../player';


@Component({
  selector: 'app-cap-holders',
  templateUrl: './cap-holders.component.html',
  styleUrls: ['./cap-holders.component.css'],
})

export class CapHoldersComponent {
  currentPlayer: Player;
  data;
  players;
  
  constructor(private http:Http, private ShareDataService: ShareDataService) {
    this.data = this.http.get('http://127.0.0.1/Project02/public/index.php').map(res => res.json())
    .subscribe(data => {
      this.players = data; 
      this.ShareDataService.setAllPlayerData(data);
    }); 
  }
  
  viewPlayerInfo(item) {
    this.currentPlayer = item;
    console.log("console below message");
    console.log(this.currentPlayer);
     
  }

}
