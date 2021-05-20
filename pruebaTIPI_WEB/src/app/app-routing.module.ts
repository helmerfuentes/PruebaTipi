import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { DatabaseComponent } from './database/database.component';

const routes: Routes = [
  {
  path:"",
  component:LoginComponent
},
{
  path:"login",
  component:LoginComponent
},
{
  path:"base",
  component:DatabaseComponent
},


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
