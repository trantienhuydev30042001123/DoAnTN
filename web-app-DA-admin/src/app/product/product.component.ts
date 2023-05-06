import {Component, Inject, OnInit} from '@angular/core';
import {MAT_DIALOG_DATA, MatDialog} from "@angular/material/dialog";
import {SizeDTO} from "../dto/sizeDTO";
import {productDTO} from "../dto/ProductDTO";
import {HelperService} from "../service/helper-service";
import {Router} from "@angular/router";

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.css'],
  providers: [
    { provide: MAT_DIALOG_DATA, useValue: {} },
  ],
})
export class ProductComponent implements OnInit {
  product: productDTO[] = [];
  displayedColumns: string[] = ['id','action', 'name','available','description','discount','image','image2','image3','price','category'];
  constructor(private helperService: HelperService,
              private dialog: MatDialog,
              private router: Router,
              @Inject(MAT_DIALOG_DATA) public id: number,) {
  }
  ngOnInit(): void {
    this.getData();
  }

  public getData(): void {
    this.helperService
      .getAll(
        "product"
      )
      .then((res: any) => {
        if (res) {
          this.product = res;
          for (let a of res) {
            let name = "";
            if (a.category) {
              const b = a.category
              name = b.name
            }
            a.category = name;
          }
        }
      })
      .catch((error) => {
        console.log("loi")
      })
  }
}
