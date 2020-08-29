//
//  ViewController.swift
//  SearchTest
//
//  Created by DW on 2020/8/15.
//  Copyright © 2020 DW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var searchResults = [SearchResult]()
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView上接safearea，searchBar高度是56
        tableView.contentInset = UIEdgeInsets(top: 56, left: 0, bottom: -56, right: 0)
        // Do any additional setup after loading the view.
        
    }

}

extension ViewController:UISearchBarDelegate{
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        for i in 0...2 {
            let searchResult = SearchResult()
            searchResult.name = String(format: "welcome--> ", i);
            searchResult.artistName = searchBar.text!
            searchResults.append(searchResult)
        }
        tableView.reloadData()
        searchBar.resignFirstResponder()
    }
    
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return .topAttached
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SearchResultCell"
        var cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        }
        let searchResult = searchResults[indexPath.row];
        cell.textLabel!.text = searchResult.name
        cell.detailTextLabel!.text = searchResult.artistName
        return cell
    }
    
}
