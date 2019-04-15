import {Component, Inject} from "@angular/core";
import {MAT_DIALOG_DATA} from "@angular/material";
import {HttpClient} from "@angular/common/http";
import _ from 'lodash';
import * as JSZip from 'jszip';

@Component({
  selector: 'image-modal',
  templateUrl: './imageModal.component.html',
  styleUrls: ['./imageModal.component.scss']
})
export class ImageModalComponent {

  public images: any[] = [];

  readonly APP_URL = 'http://localhost:8080';

  constructor(@Inject(MAT_DIALOG_DATA) public data: any, private _http: HttpClient) {
    this.images.push(data.element[data.column]);
  }

  selectEvent(file: File): void {
    this.images = []; //just one picture per object
    this.getBase64(file);
  }

  getBase64(file) {
    let reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = () => {
      let img = reader.result.toString();
      return this.images.push(img.substring(img.indexOf(',') + 1));
    }
  }

  onDelete(element: any) {
    _.remove(this.images, image => element === image);
  }

  loadImages() {
    this._http.post(this.APP_URL + '/saveImage', {id: this.data.element.id, image: this.images[0]})
      .subscribe(value => console.log(value));
  }

  returnBack() {
    return {id: this.data.element.id, image: this.images[0]};
  }
}
