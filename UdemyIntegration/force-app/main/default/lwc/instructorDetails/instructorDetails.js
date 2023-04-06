import { LightningElement,api } from 'lwc';

export default class InstructorDetails extends LightningElement {
  @api url;
  @api job;
  @api image;
  @api name;

  get InstUrl(){
    
    return 'https://www.udemy.com' + this.url;
  }


}