//
//  ServiceListViewController.swift
//  homeserviceapp
//
//  Created by Zhu, Jin You on 11/5/17.
//  Copyright © 2017 Zhu, Jin You. All rights reserved.
//

import UIKit

class ServiceListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //prepare segue and pass data to target controller
        var detailController: ServiceDetailsViewController;
        if (segue.identifier == "homeclean") {
            detailController = segue.destination as! ServiceDetailsViewController;
            detailController.serviceName = "Home Clean";
        } else if (segue.identifier == "wash") {
            detailController = segue.destination as! ServiceDetailsViewController;
            detailController.serviceName = "Wash & Iron";
        } else if (segue.identifier == "other") {
            detailController = segue.destination as! ServiceDetailsViewController;
            detailController.serviceName = "Other Service";
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
