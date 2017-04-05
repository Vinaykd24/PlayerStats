import {Injectable} from '@angular/core';
import {Http, Response} from "@angular/http";
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map';
import {Observable} from "rxjs";

@Injectable()
export class AllPlayersService {
  constructor(private myHttp: Http, private myMatchInfo: Http) { }

  getData() {
        return this.myHttp.get("http://127.0.0.1/Project02/public/index.php")
            .map(response => response.json())
    }

    getMatchDetails(){
        return this.myMatchInfo.get("http://127.0.0.1/Project02/Public/matchDetails.php")
            .map(response => response.json())
    }
}
