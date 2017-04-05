import { Injectable } from '@angular/core';

@Injectable()
export class ShareDataService {

  sharedData;
  allPlayerData;
  allMatchData;

  constructor() { }

  setData(data){
    this.sharedData = data;
  }

  getData(){
    return this.sharedData;
  }

  setAllPlayerData(data){
    this.allPlayerData = data;
  }

   getAllPlayerData(){
    return this.allPlayerData;
  }
  getMatchDetails(){
    return this.allMatchData;
  }

}
