import { LightningElement } from "lwc";
import getUdemyCourses from "@salesforce/apex/UdemyIntegration.getUdemyCourses";
import getPreviousUdemyCourses from "@salesforce/apex/UdemyIntegration.getPreviousUdemyCourses";
import getNextUdemyCourses from "@salesforce/apex/UdemyIntegration.getNextUdemyCourses";

export default class CourseSearchComponent extends LightningElement {
  courses = [];
  count;
  flag=false;
  next;
  previous;
  disablePrevious;
  disableNext;
  fetchCourses() {
    const courseName = this.template.querySelector(".course-input").value;

    getUdemyCourses({ course: courseName })
      .then((data) => {
        this.courses = JSON.parse(data).results;
        this.count = JSON.parse(data).count;
        this.next = JSON.parse(data).next;
        this.previous = JSON.parse(data).previous;
        console.log(this.next + "    " + this.previous);
         this.disableNext = this.next ? false : true;
         this.disablePrevious = this.previous ? false : true;
         this.flag = this.count>0 ? true:false;
         console.log(data);
      })
      .catch((error) => {
        console.log(error);
        this.count = 0;
      });
      



     
     
  }

  handleBack() {
    getPreviousUdemyCourses({ url:this.previous })
      .then((data) => {
        this.courses = JSON.parse(data).results;
        this.next = JSON.parse(data).next;
        this.previous = JSON.parse(data).previous;
         this.disableNext = this.next ? false : true;
         this.disablePrevious = this.previous ? false : true;
          this.flag = this.count > 0 ? true : false;
      })
      .catch((error) => {
        console.log(error);
      });
      
  }

  handleNext(){
getNextUdemyCourses({ url: this.next })
  .then((data) => {
    this.courses = JSON.parse(data).results;
    this.next = JSON.parse(data).next;
    this.previous = JSON.parse(data).previous;
     this.disableNext = this.next ? false : true;
     this.disablePrevious = this.previous ? false : true;
      this.flag = this.count > 0 ? true : false;
  })
  .catch((error) => {
    console.log(error);
  });

  }
}
