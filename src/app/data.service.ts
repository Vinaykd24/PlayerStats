import { Injectable } from '@angular/core';
import { Http,Response } from '@angular/http';
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map';
import {Observable} from "rxjs"

@Injectable()
export class DataService {
  data;
  players;

  constructor(private http: Http ) { }
  
  fetchData(){
    //this.data = this.http.get('http://127.0.0.1/Project02/public/index.php').map(
      this.data = this.http.get('playerlist.json').map(
      (res) => res.json()
      )
                .subscribe(
                  (data)=>this.players=data
                );
  }

  private extractData(res: Response) {
    let body = res.json();
    return body || { };
  }

  private handleError (error: any) {
    let errMsg = (error.message) ? error.message :
      error.status ? `${error.status} - ${error.statusText}` : 'Server error';
    console.error(errMsg); // log to console instead
    return Observable.throw(errMsg);
  }
}
