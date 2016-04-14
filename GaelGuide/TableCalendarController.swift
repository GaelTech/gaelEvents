//
//  TableCalendarController.swift
//  GaelGuide
//
//  Created by Justine Seastres on 4/6/16.
//  Copyright © 2016 Justine Seastres. All rights reserved.
//

import  UIKit

class TableCalendarController: UITableViewController {
    let nameOfEvent = ["CAB - Warriors Ticket SignUp", "RHA - Giant's Game ", "APASA - Asian Cultural Night", "GaelForce - Tshirt Pickup"]
    let nameOfWho = ["All Students", "All Students", "On Campus Residents Only", "Seniors!"]
    let nameOfWhen = ["Today", "5/11/16", "March 17, 2016", "TBD"]
    let nameOfWhere = ["Chapel Lawn", "Galileo Hall", "Moraga Commons", "Garaventa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nameOfEvent.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("event", forIndexPath: indexPath)
        
        cell.textLabel!.textColor = UIColor.blueColor()
        cell.textLabel?.text = nameOfEvent[indexPath.item]
//        cell.textLabel?.text = nameofWho[indexPath.item]
        // Configure the cell...

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        //referencing event controller by casting destinationViewController as EventInfoController
        let eventController = segue.destinationViewController as? EventInfoController
        //gives: index of whatever cell was selected,
        eventController?.What = nameOfEvent[(self.tableView.indexPathForSelectedRow?.row)!]
        eventController?.Who = nameOfWho[(self.tableView.indexPathForSelectedRow?.row)!]
        eventController?.When = nameOfWhen[(self.tableView.indexPathForSelectedRow?.row)!]
        eventController?.Where = nameOfWhere[(self.tableView.indexPathForSelectedRow?.row)!]
        eventController?.eventTitle = nameOfEvent[(self.tableView.indexPathForSelectedRow?.row)!]

//        eventController?.eventName = somearray[(self.tableView.indexPathForSelectedRow?.row)!]
        
    }


}
