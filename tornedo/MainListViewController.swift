//
//  ViewController.swift
//  tornedo
//
//  Created by hiromu otiai on 7/3/16.
//  Copyright © 2016 otiai10.com. All rights reserved.
//

import UIKit

class MainListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainTableView: UITableView!
    var list = ["hoge", "fuga"];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count;
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TodoListItem")! as UITableViewCell;
        let row = self.list[indexPath.row];
        cell.textLabel?.text = row;
        return cell;
    }
}

