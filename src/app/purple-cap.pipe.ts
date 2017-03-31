import { Pipe,Input } from '@angular/core';

@Pipe({
  name: 'purpleCap'
})
export class PurpleCapPipe implements Input{

  transform(value: any):  any {
       
        if(value == null){
          return null;
        }
        value.sort((a: any, b: any) => {
          if (parseInt(a.wickets) > parseInt(b.wickets)) {
            return -1;
          } else if (parseInt(a.wickets) < parseInt(b.wickets)) {
            return 1;
          } else {
            return 0;
          }
        });
        let topPurpPlayers =[];
        topPurpPlayers.push(value[0])
        topPurpPlayers.push(value[1])
        topPurpPlayers.push(value[2])
        
        return topPurpPlayers;
    }

}
