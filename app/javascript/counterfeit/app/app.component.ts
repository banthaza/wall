import { Component } from '@angular/core';

@Component({
  selector: 'counterfeit-app',
  template: `<h1>Hello {{name}} What else</h1>`
})
export class AppComponent {
  name = 'Counterfeit Tracker!';
}
