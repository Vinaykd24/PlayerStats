import { ModuleWithProviders }  from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { PlayerListComponent } from './player-list/player-list.component';
import { PlayerDetailComponent } from './player-detail/player-detail.component';
import { AddDetailComponent } from './add-detail/add-detail.component';
import { AboutComponent } from './about/about.component';
import { MatchResultComponent } from './match-result/match-result.component';
import { CapHoldersComponent } from './cap-holders/cap-holders.component'

const appRoutes: Routes = [
    { path : 'player-list', component: PlayerListComponent },
    { path : 'about', component: AboutComponent },
    { path : 'player-detail', component: PlayerDetailComponent },
    { path : 'add-detail', component: AddDetailComponent },
    { path : 'app-match-result', component: MatchResultComponent },
    { path : '', component: CapHoldersComponent },
    
    
];

export const routing = RouterModule.forRoot(appRoutes);