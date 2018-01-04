import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';

import template from './login.component.html'

@Component({
    selector: 'app-login',
    template: template,
})
export class LoginComponent implements OnInit {

    valForm: FormGroup;

    constructor() {

    }

    submitForm($ev, value: any) {
        $ev.preventDefault();
        console.log(value);

    }

    ngOnInit() {

    }

}
