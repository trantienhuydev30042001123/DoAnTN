import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import {RouterLink, RouterModule, RouterOutlet, Routes} from "@angular/router";
import {MatButtonModule} from "@angular/material/button";
import { SidenavComponent } from './sidena/sidenav.component';
import { HeaderComponent } from './header/header.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import {MatSidenavModule} from "@angular/material/sidenav";
import {BrowserAnimationsModule} from "@angular/platform-browser/animations";
import {MatListModule} from "@angular/material/list";
import {MatIconModule} from "@angular/material/icon";
import {MatToolbarModule} from "@angular/material/toolbar";
import {MatMenuModule} from "@angular/material/menu";
import {MatDividerModule} from "@angular/material/divider";
import { UserComponent } from './user/user.component';
import {MatButtonToggleModule} from "@angular/material/button-toggle";

import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {MatTableModule} from "@angular/material/table";
import {MatPaginatorModule} from "@angular/material/paginator";
import {LoginComponent} from "./login/login.component";
import {MatCardModule} from "@angular/material/card";
import {MatInputModule} from "@angular/material/input";
import {HttpClientModule} from "@angular/common/http";
import {MatDialogModule} from "@angular/material/dialog";
import { RoleComponent } from './role/role.component';
import { SizeComponent } from './size/size.component';
import { CategoryComponent } from './category/category.component';
import { ProductComponent } from './product/product.component';
import { DialogConfirmComponent } from './dialog-confirm/dialog-confirm.component';
import {SizeCreateUpdateComponent} from "./size/size-create-update/size-create-update.component";
import { CategoryCreateUpdateComponent } from './category/category-create-update/category-create-update.component';
import { RoleCreateUpdateComponent } from './role/role-create-update/role-create-update.component';
import {UserCreateUpdateComponent} from "./user/user-create-update/user-create-update.component";
import {MatOptionModule} from "@angular/material/core";
import {MatSelectModule} from "@angular/material/select";
const appRoutes: Routes = [
  {
    path: 'login',
    loadChildren: () => import('src/app/login/login.component').then(m => m.LoginComponent),
  },
  {path:'', redirectTo: 'dashboard', pathMatch:'full'},
  // {path:'login', component:LoginComponent},
  {path:'dashboard', component:DashboardComponent},
  {path:'user', component:UserComponent},
  {path:'product', component:ProductComponent},
  {path:'role', component:RoleComponent},
  {path:'category', component:CategoryComponent},
  {path:'size', component:SizeComponent},
  // {path:'home', component:HomeComponent}
  // {path:'home', component:HomeComponent}

];
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    SidenavComponent,
    HeaderComponent,
    DashboardComponent,
    UserComponent,
    RoleComponent,
    SizeComponent,
    CategoryComponent,
    ProductComponent,
    DialogConfirmComponent,
    SizeCreateUpdateComponent,
    CategoryCreateUpdateComponent,
    RoleCreateUpdateComponent,
    UserCreateUpdateComponent
  ],
  imports: [
    HttpClientModule,
    BrowserModule,
    RouterModule.forRoot(appRoutes),
    BrowserAnimationsModule,
    MatButtonModule,
    RouterLink,
    RouterOutlet,
    MatSidenavModule,
    MatListModule,
    MatIconModule,
    MatToolbarModule,
    MatMenuModule,
    MatDividerModule,
    MatButtonToggleModule,
    ReactiveFormsModule,
    MatTableModule,
    MatPaginatorModule,
    MatCardModule,
    MatInputModule,
    FormsModule,
    MatDialogModule,
    MatOptionModule,
    MatSelectModule,

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
