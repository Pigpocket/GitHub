//
//  TableViewController.swift
//  Meme1.0
//
//  Created by Gaston Gasquet on 11/8/15.
//  Copyright © 2015 Gaston Gasquet. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
    var memes: [Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let applicationDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        memes = applicationDelegate.memes
        
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return self.memes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MemeCollectionViewCell") as UITableViewCell!
        _ = self.memes[indexPath.row]
        return cell
    }


}
