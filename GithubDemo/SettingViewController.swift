//
//  SettingViewController.swift
//  GithubDemo
//
//  Created by Tien on 3/16/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

protocol SettingDelegate {
    func onSettingDismissedWithSetting(setting:GithubRepoSearchSettings)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var starSlider: UISlider!
    @IBOutlet weak var settingTableView: UITableView!
    
    var delegate:SettingDelegate?
    
    var setting:GithubRepoSearchSettings!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func saveButtonDidClick(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func cancelButtonDidClick(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

extension SettingViewController:UITableViewDataSource, UITableViewDelegate {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if (section == 1) {
            return 1
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("sliderCell") as! SliderCell
            cell.theLabel.text = "Minimum Stars"
            cell.slider.value = Float(setting.minStars)
            return cell
        } else if indexPath.section == 1 && indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("switchCell") as! SwitchCell
            cell.theLabel.text = "Filter by language"
            cell.theSwitch.on = setting.enableLanguage
            return cell
        }
        return UITableViewCell()
    }
}
