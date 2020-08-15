//
//  ViewController.swift
//  SearchTest
//
//  Created by DW on 2020/8/15.
//  Copyright © 2020 DW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //如果要适配iphoneX的话也一样，因为tableView本身距离上面的就是安全距离。它空出来的距离就是给SearchBar的距离
        tableView.contentInset = UIEdgeInsets(top: 56, left: 0, bottom: 0, right: 0)
        // Do any additional setup after loading the view.
    }


}

