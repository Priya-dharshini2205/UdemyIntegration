import { LightningElement, api,track } from "lwc";

export default class Courses extends LightningElement {
  @api courseId;
  @api title;
  @api image;
  @api summary;
  @api price;
  @api priceDetails;
  @api instructor = [];
  @api courseUrl;
  @track status;
 
  istext;
  fetchCourseDetails() {
    this.status = true;
  }

  get hasDetails() {
    return this.status ? true : false;
  }
  
  get convertedPrice(){
    if(this.priceDetails){
        const p = this.priceDetails.amount*0.61;
        return 'Rs.'+p.toString();
    }
    else return this.price;
  }
  
  handleEnroll() {
    window.open("https://www.udemy.com" + this.courseUrl);
  }
  
  
}
