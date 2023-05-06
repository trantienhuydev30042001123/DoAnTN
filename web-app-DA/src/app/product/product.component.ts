import {Component, Inject, OnInit} from '@angular/core';
import {HelperService} from "../service/helper-service";
import {ReplaySubject} from "rxjs";
import {productDTO} from "../dto/ProductDTO";
import {Router} from "@angular/router";
import {MAT_DIALOG_DATA, MatDialog} from "@angular/material/dialog";
import {ProductViewDetailsComponent} from "../product-view-details/product-view-details.component";

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.css'],
  providers: [
    { provide: MAT_DIALOG_DATA, useValue: {} },
  ]
})
export class ProductComponent implements OnInit {
  product: productDTO[] = [];
  row: productDTO;

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
          for (let a of this.product) {
            let price = 0;
            price = a.price - (a.price * a.discount / 100);
            a.lastprice = price;
          }
        }
      })
      .catch((error) => {
        console.log("loi")
      })
  }

  showProductDetails(id: string) {
    this.dialog
      .open(ProductViewDetailsComponent, {
        autoFocus: false,
        data: id
      })
      .afterClosed()
      .subscribe((mess) => {
        this.getData();
      });
  }
  // showProductDetails(): void {
  //   this.helperService
  //     .findInfoById(
  //       "product", this.default.id
  //     )
  //     .then((res: any) => {
  //       if (res.data) {
  //         // this.default = res.data;
  //       }
  //     })
  //     .catch((error) => {
  //     })
  //     .finally(() => {
  //     });
  // }
}
