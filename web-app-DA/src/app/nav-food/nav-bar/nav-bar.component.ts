import {Component, OnInit} from '@angular/core';
import {TokenService} from "../../service/token.service";
import {Router} from "@angular/router";
import {HelperService} from "../../service/helper-service";

@Component({
  selector: 'app-nav-bar',
  templateUrl: './nav-bar.component.html',
  styleUrls: ['./nav-bar.component.css']
})
export class NavBarComponent implements OnInit{
  totalItem : number = 0;
  name: string;
  checkLogin = false;
  constructor(private tokenService: TokenService,
              private router: Router,
              private helperService: HelperService,
              ) {
  }

  ngOnInit(): void {
    this.getListCart();
    if (this.tokenService.getToken()){
      this.checkLogin = true;
      this.name = this.tokenService.getName()
    }
  }
  public getListCart(): void {
    this.helperService
      .getAll(
        "cart"
      )
      .then((res: any) => {
        this.totalItem = res.length;
      })
      .catch((error) => {
        console.log("loi")
      })
  }
  logOut(){
    console.log("abc")
    this.tokenService.logOut();
    this.router.navigate(['home']).then(()=> {
      window.location.reload();
    })
  }

}