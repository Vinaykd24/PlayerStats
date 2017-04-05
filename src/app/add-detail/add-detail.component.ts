import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, FormControl, Validators } from '@angular/forms';
import { matchInfo } from './matchInfo.class'
import {ShareDataService } from '../share-data.service';
import {Http,Response} from '@angular/http';

@Component({
  selector: 'app-add-detail',
  templateUrl: './add-detail.component.html',
  styleUrls: ['./add-detail.component.css']
})
export class AddDetailComponent implements OnInit {
  tournamentDetails: FormGroup;
  matchDetails: FormGroup;
  enableSecondPanel: boolean;
  
  /*Initialized Variables for Form Errors */
  electedToController;
  runsConcededController;
  oversBowledController;

  runScoredController;
  ballFacedController;
  oversController;
  maidensController;
  runsGivenController;
  wicketsTakenController;

  matchInfo: matchInfo[] = [];
  allPlayerData;

  constructor(private formBuilder: FormBuilder,
              private ShareDataService: ShareDataService,
              private http:Http) { }

  ngOnInit() {
    this.buildForm();
    this.enableSecondPanel = false;
    this.allPlayerData = this.ShareDataService.getAllPlayerData();
    if(!this.allPlayerData) {
      this.http.get('http://127.0.0.1/Project02/public/index.php').map(res => res.json())
      .subscribe(data => {
        this.allPlayerData = data; 
      }); 
    }
  }

  buildForm(){
    	this.tournamentDetails = this.formBuilder.group({
        tournament_name: this.formBuilder.control(null, [Validators.required]),
        match_venue: this.formBuilder.control(null, [Validators.required]),
        match_time: this.formBuilder.control(null, [Validators.required]),
        toss: this.formBuilder.control(null, [Validators.required]),
        elected_to: this.formBuilder.control(null, [Validators.required, Validators.pattern('[A-Za-z]{1,4}')]),
        match_result: this.formBuilder.control(null, [Validators.required]),
        runs_conceded: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,3}')]),
        overs_bowled: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,3}')]),
        man_of_match: this.formBuilder.control(null, [Validators.required]),
		});
    this.matchDetails = this.formBuilder.group({
      pname: this.formBuilder.control(null, [Validators.required]),
      runs_scored: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,4}')]),
      balls_faced: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,4}')]),
      overs: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,3}')]),
      maidens: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,3}')]),
      runs_given: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,4}')]),
      wickets_taken: this.formBuilder.control(null, [Validators.required, Validators.pattern('[0-9]{1,2}')]),
    });

    this.electedToController = this.tournamentDetails.get('elected_to');
    this.runsConcededController = this.tournamentDetails.get('runs_conceded');
    this.oversBowledController = this.tournamentDetails.get('overs_bowled');

    this.runScoredController = this.matchDetails.get('runs_scored');
    this.ballFacedController = this.matchDetails.get('balls_faced');
    this.oversController = this.matchDetails.get('overs');
    this.maidensController = this.matchDetails.get('maidens');
    this.runsGivenController = this.matchDetails.get('runs_given');
    this.wicketsTakenController = this.matchDetails.get('wickets_taken');

  }

  submitTournamentDetails(data){
    console.log(data);
    this.enableSecondPanel = true;
  }
  submitMatchDetails(data){
    this.matchInfo.push(data);
    this.matchDetails.reset();
  }

}


