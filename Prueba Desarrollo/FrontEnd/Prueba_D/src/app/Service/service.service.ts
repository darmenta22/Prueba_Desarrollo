import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Profesores } from '../Modelo/Profesores';

@Injectable({
  providedIn: 'root'
})
export class ServiceService {
  
  
  constructor(private http:HttpClient) { }

  Url='http://localhost:8080/Profesores';

  getProfesores(){
    return this.http.get<Profesores[]>(this.Url)
  }
}
