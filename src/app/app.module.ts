import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { MyNavComponent } from './my-nav/my-nav.component';
import { PlayerListComponent } from './player-list/player-list.component';
import { CapHoldersComponent } from './cap-holders/cap-holders.component';
import { PurpleCapPipe } from './purple-cap.pipe';
import { OrangeCapPipe } from './orange-cap.pipe';
import { GreenCapPipe } from './green-cap.pipe';
import { routing } from './app.routing';
import { AllPlayersService } from './all-players.service';
import { AboutComponent } from './about/about.component';
import { AddDetailComponent } from './add-detail/add-detail.component';


import { PlayerDetailComponent } from './player-detail/player-detail.component'

import { ShareDataService } from './share-data.service'

@NgModule({
  declarations: [
    AppComponent,
    MyNavComponent,
    PlayerListComponent,
    CapHoldersComponent,
    PurpleCapPipe,
    OrangeCapPipe,
    GreenCapPipe,
    AboutComponent,
    AddDetailComponent,
    PlayerDetailComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    HttpModule,
    routing
  ],
  providers: [
    AllPlayersService,
    ShareDataService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
