//
//  ViewController.swift
//  SQLiteTest
//
//  Created by Brayden M Dyke on 4/21/23.
//

import UIKit
  
class ViewController: UIViewController {
  
    @IBAction func rosterView() {
        let vc = storyboard?.instantiateViewController(identifier: "roster_vc") as! RosterViewController
        present(vc, animated: true)
    }
    @IBAction func scheduleView() {
        let vc = storyboard?.instantiateViewController(identifier: "schedule_vc") as! ScheduleViewController
        present(vc, animated: true)
    }
    @IBAction func socialsView() {
        let vc = storyboard?.instantiateViewController(identifier: "socials_vc") as! SocialsViewController
        present(vc, animated: true)
    }
}
