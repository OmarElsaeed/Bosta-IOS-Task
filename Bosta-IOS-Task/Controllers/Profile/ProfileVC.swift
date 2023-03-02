//
//  ProfileVC.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 01/03/2023.
//

import UIKit
import RxSwift
import RxCocoa

class ProfileVC: UIViewController, UITableViewDelegate {
    
    private var profileViewModel = ProfileViewModel()
    let disposalBag = DisposeBag()

    @IBOutlet weak var userAdressLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var albumsTableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        albumsTableView.rx.setDelegate(self).disposed(by: disposalBag)

        // Do any additional setup after loading the view.
        self.title = "Profile"
        profileViewModel.fetchUsers(profileMV: profileViewModel.self)
        //=========================================================
        albumsTableView.register(UINib(nibName: "myCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        profileViewModel.users.bind(to: albumsTableView.rx.items(cellIdentifier: "cell",cellType: myCell.self)){
            (tableView, user, cell) in
            cell.textLabel?.text = user.name
        }.disposed(by: disposalBag)
        //=========================================================
        albumsTableView.rx.modelSelected(Album.self).subscribe(onNext: { album in
            print("SelectedItem: \(album.title)")
                }).disposed(by: disposalBag)

      //  print(("profileViewModel.returnedUers = \(profileViewModel.users)"))
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
