//
//  ViewController.swift
//  authLoginComponent
//
//  Created by Esteban Torres on 04/15/2016.
//  Copyright (c) 2016 Esteban Torres. All rights reserved.
//

import UIKit

import auth0LoginComponent

class ViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      Auth0LoginComponent.presentLoginViewControllerWithPresenterController(self, successHandler: { token in
         
         }, errorHandler: { error in
      })
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
}

