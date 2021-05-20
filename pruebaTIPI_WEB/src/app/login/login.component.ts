import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Form } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  numero:number=0;
  myvector:any;
  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    this.buscar();
  }


  buscar(){
    console.log(this.numero);

    this.http.get<string[]>(`https://localhost:44356/weatherforecast/${this.numero}`)
    .subscribe(res=>{
      console.log(res);
      this.myvector=res;
    })
  }

}
