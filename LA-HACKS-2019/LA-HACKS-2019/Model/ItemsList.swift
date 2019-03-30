//
//  ItemsList.swift
//  LA-HACKS-2019
//
//  Created by ali mirabzadeh on 3/30/19.
//  Copyright © 2019 AMZ Development. All rights reserved.
//

import UIKit

class ItemsList: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var customInfo : [type] = [type]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}


///////////////////////////////////////////
// TableView DataSource Methods
//cellForRowAtIndexPath:
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CostumCellControlle", for: indexPath) as! CostumCellController
    cell.cityInputTextField.text =
    
}


//Declare numberOfRowsInSection:
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
}

//retrieveMessages method to retrieve from DB:
func retrieveMessages(){
}
