import { Component, OnInit } from '@angular/core';
import { ShareDataService } from '../share-data.service';

@Component({
  selector: 'app-player-detail',
  templateUrl: './player-detail.component.html',
  styleUrls: ['./player-detail.component.css']
})
export class PlayerDetailComponent implements OnInit {

  playerData;

  constructor(private ShareDataService: ShareDataService) { }

  ngOnInit() {
    this.playerData = this.ShareDataService.getData();
    console.log(this.playerData);
  }

}
