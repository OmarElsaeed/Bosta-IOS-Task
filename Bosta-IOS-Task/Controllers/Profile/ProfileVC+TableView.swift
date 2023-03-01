//
//  ProfileVC+TableView.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 01/03/2023.
//

import Foundation
import UIKit

extension ProfileVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        profileViewModel.numberOfRows(in: section )
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
    
}
