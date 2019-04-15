import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';

import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {MaterialModule} from './material.module';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {ImageModalComponent} from "./imageModal/imageModal.component";
import {CovalentFileModule, CovalentLayoutModule, CovalentStepsModule} from "@covalent/core";

@NgModule({
  declarations: [
    AppComponent,
    ImageModalComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    BrowserAnimationsModule,
    CovalentLayoutModule,
    CovalentStepsModule,
    CovalentFileModule,
    MaterialModule
  ],
  entryComponents: [
    AppComponent,
    ImageModalComponent
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
