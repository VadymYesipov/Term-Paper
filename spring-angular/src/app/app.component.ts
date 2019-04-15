import {Component, ElementRef, OnInit, ViewChild} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {MatDialog, MatPaginator, MatSort, MatTableDataSource} from "@angular/material";
import {ImageModalComponent} from "./imageModal/imageModal.component";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {

  title = 'Spring Mvc Angular Tutorial';

  @ViewChild(MatSort)
  sort: MatSort;
  @ViewChild(MatPaginator)
  paginator: MatPaginator;

  dataSource = new MatTableDataSource<any>();
  displayedColumns: string[] = ['id', 'brandModelName', 'bicycleCategory', 'age', 'brakeType', 'amountOfWheels', 'amountOfSpeed', 'quality', 'color', 'price', 'description', 'image'];

  bicycles: any;
  brands: any;
  bicycleCategories: any;
  ageCategories: any;
  brakeTypes: any;
  colors: any;
  qualities: any;
  speedAmounts: any;
  wheelsAmounts: any;

  readonly APP_URL = 'http://localhost:8080';

  constructor(private _http: HttpClient, public dialog: MatDialog) { }

  ngOnInit() {
    this.getAllInfo();
  }

  getAllInfo() {
    this._http.get(this.APP_URL + '/bicycleInfo').subscribe(
      data => {
        let result: any = data;
        this.brands = result.brands;
        this.bicycleCategories = result.bicycleCategories;
        this.ageCategories = result.ageCategories;
        this.brakeTypes = result.brakeTypes;
        this.colors = result.colors;
        this.qualities = result.qualities;
        this.speedAmounts = result.speedAmounts;
        this.wheelsAmounts = result.wheelsAmounts;
        this.getAllBicycles();
      });
  }

  getAllBicycles() {
    this._http.get(this.APP_URL + '/bicycles').subscribe(
      data => {
        this.bicycles = data;
        this.dataSource.data = this.parseBicycles(this.bicycles);
        this.dataSource.paginator = this.paginator;
        this.dataSource.sort = this.sort;
      },
      error => {
        console.log('Error occured', error);
      }
    );
  }

  parseBicycles(bicycles: any) {
    let bikes = new Array(bicycles.length);
    bicycles.forEach((bicycle, i, arr) => {
      bikes[i] = {
        'id': bicycle.id,
        'brandModelName': bicycle.brand.brandName + '  ' + bicycle.brand.modelName,
        'bicycleCategory': bicycle.bicycleCategory.category,
        'age': bicycle.ageCategory.age,
        'brakeType': bicycle.brakeType.type,
        'amountOfWheels': bicycle.wheelsAmount.amount,
        'amountOfSpeed': bicycle.speedAmount.amount,
        'quality': bicycle.quality.quality,
        'color': bicycle.color.color,
        'price': bicycle.price,
        'description': bicycle.description,
        'image': bicycle.image.image
      };
    });
    return bikes;
  }

  getListByColumn(column: string) {
    switch (column) {
      case 'brandModelName':
        return this.brands;
      case 'age':
        return this.ageCategories;
      case 'brakeType':
        return this.brakeTypes;
      case 'amountOfWheels':
        return this.wheelsAmounts;
      case 'amountOfSpeed':
        return this.speedAmounts;
      case 'quality':
        return this.qualities;
      case 'color':
        return this.colors;
      case 'bicycleCategory':
        return this.bicycleCategories;
    }
  }

  getOption(option, column: string) {
    switch (column) {
      case 'brandModelName':
        return option.brandName + '  ' + option.modelName;
      case 'brakeType':
        return option.type;
      case 'bicycleCategory':
        return option.category;
      case 'amountOfWheels':
      case 'amountOfSpeed':
        return option.amount;
      case 'age':
      case 'quality':
      case 'color':
        return option[column];
    }
  }

  isSelected(value1, value2) {
    return value1 == value2;
  }

  onClick(element, column: string, option) {
    let bicycle = this.bicycles.filter(bicycle => bicycle.id == element.id)[0];
    console.log('bicycle', bicycle);
    console.log('selectedValue', option);
    switch (column) {
      case 'brandModelName':
        bicycle.brand.brandName = option.split('  ')[0];
        bicycle.brand.modelName = option.split('  ')[1];
        break;
      case 'age':
        bicycle.ageCategory.age = option;
        break;
      case 'brakeType':
        bicycle.brakeType.type = option;
        break;
      case 'amountOfWheels':
        bicycle.wheelsAmount.amount = option;
        break;
      case 'amountOfSpeed':
        bicycle.speedAmount.amount = option;
        break;
      case 'quality':
        bicycle.quality.quality = option;
        break;
      case 'color':
        bicycle.color.color = option;
        break;
      case 'bicycleCategory':
        bicycle.bicycleCategory.category = option;
        break;
    }
    console.log('bicycle', bicycle);
    this._http.post(this.APP_URL + '/saveBicycle', bicycle)
      .subscribe(value => console.log(value));
  }

  openDialog(element: any, column: string) {
    const dialogRef = this.dialog.open(ImageModalComponent, {
        data: {
          element: element,
          column: column
        }
    });

    dialogRef.afterClosed().subscribe(result => {
      this.dataSource.data.map(bicycle => {
        bicycle.image = bicycle.id == result.id ? result.image : bicycle.image;
      })
    });
  }
}
