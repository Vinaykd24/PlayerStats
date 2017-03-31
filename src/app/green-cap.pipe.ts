import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'greenCap'
})
export class GreenCapPipe implements PipeTransform {

  transform(value: Array<Object>):  Array<Object> {
        
       
        if(value == null){
          return null;
        }
        value.sort((a: any, b: any) => {
          if (parseInt(a.MOM) > parseInt(b.MOM)) {
            return -1;
          } else if (parseInt(a.MOM) < parseInt(b.MOM)) {
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
