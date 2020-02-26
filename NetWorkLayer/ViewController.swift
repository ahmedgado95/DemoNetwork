//
//  ViewController.swift
//  NetWorkLayer
//
//  Created by A on 25/02/2020.
//  Copyright © 2020 Ahmed Gado. All rights reserved.
//

import UIKit
protocol SearchDelegate: class {
    func didDownLoad(search: [SearchData])
    func fail(error: String)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var searchSource = [SearchData]()
    var backEndManger = BackendMager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerCellNib(cellClass: SearchTableCell.self)
        backEndManger.delegate = self
    }
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        tableView.isHidden = false
        backEndManger.getSearchData()
    }
    
}
extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as SearchTableCell
        let item = searchSource[indexPath.row]
        cell.configerCell(item: item)
        return cell
    }
}

extension ViewController : SearchDelegate {
    func didDownLoad(search: [SearchData]) {
        self.searchSource = search
        tableView.reloadData()
    }
    func fail(error: String) {
        print(error)
    }
}
