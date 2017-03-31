import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'orangeCap'
})
export class OrangeCapPipe implements PipeTransform {

  transform(value: Array<Object>):  Array<Object> {
        
       
        if(value == null){
          return null;
        }
        value.sort((a: any, b: any) => {
          if (parseInt(a.runScored) > parseInt(b.runScored)) {
            return -1;
          } else if (parseInt(a.runScored) < parseInt(b.runScored)) {
            return 1;
          } else {
            return 0;
          }
        });
        let topOrngPlayers =[];
        topOrngPlayers.push(value[0])
        topOrngPlayers.push(value[1])
        topOrngPlayers.push(value[2])
        
        return topOrngPlayers;
    }

}
