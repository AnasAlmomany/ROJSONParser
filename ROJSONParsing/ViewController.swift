//
//  ViewController.swift
//  ROJSONParsing
//
//  Created by Robin Oster on 07/08/14.
//  Copyright (c) 2014 Robin Oster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()

        var baseWebservice:BaseWebservice = BaseWebservice();
        
        var urlToJSON = "http://prine.ch/employees.json"
        
        var callbackJSON = {(status:Int, employees:EmployeeContainer) -> () in
            println("Firstname: " + employees.employees[0].firstname)
            println("Lastname: " + employees.employees[0].firstname)
            println("Age: \(employees.employees[0].age)")
        }
        
        baseWebservice.get(urlToJSON, callback:callbackJSON)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

