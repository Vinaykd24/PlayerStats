import { NgModule, Component, Directive } from '@angular/core';
import { Player } from './player';
import { MyNavComponent } from './my-nav/my-nav.component';
import { CapHoldersComponent } from './cap-holders/cap-holders.component';
import { PlayerListComponent } from './player-list/player-list.component';

import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map'; 

@NgModule({
  declarations:[
    PlayerListComponent,
  ]
})


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})



export class AppComponent {
  
}

//var PLAYER: Player [] = [];
