import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Profesores } from 'src/app/Modelo/Profesores';
import {ServiceService} from '../../Service/service.service'


@Component({
  selector: 'app-listar',
  templateUrl: './listar.component.html',
  styleUrls: ['./listar.component.css']
})
export class ListarComponent implements OnInit {

  constructor(private service:ServiceService,private router:Router) { }
  
  profesores: Profesores[] = [];
  ngOnInit() {
    this.service.getProfesores()
    .subscribe(data=>{this.profesores=data;})
  }

  

}
