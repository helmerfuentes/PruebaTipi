import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

export class IPersona {
  nombres: string;
  apellidos: string;
  edad: number;
  id:number;
}

@Component({
  selector: 'app-database',
  templateUrl: './database.component.html',
  styleUrls: ['./database.component.css']
})
export class DatabaseComponent implements OnInit {

  ruta:string="persona";

  isActualizar=false;

  url="https://localhost:44356/";

  miPersona: IPersona = new IPersona();
  personas: IPersona[] = [];
  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    this.listar();
  }

  guardar() {

    console.log(this.miPersona);

    if (this.isActualizar) {
      this.actualizar();
      return;
    }

    this.http.post(this.url+"api/persona", this.miPersona)
      .subscribe(res => {
        this.listar();
        this.miPersona= new IPersona();
      })
  }

  eliminar(id: number) {

    console.log(id);

  this.http.delete(this.url+"api/persona/"+id)
  .subscribe(res=>this.listar());
  }


  detalle(id: number){
      this.miPersona=this.personas.find(x=>x.id==id);
console.log(this.miPersona);


      this.isActualizar=true;
  }

  actualizar() {
    this.http.put(this.url+"api/persona", this.miPersona)
      .subscribe(res => {
        this.listar();
      })
  }

  listar() {
    this.http.get<IPersona[]>(this.url+"api/persona")
      .subscribe(res =>{
        this.personas = res



      } );
  }

}
