//
//  ProfileVC.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 09/09/2023.
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
        
        //         Do any additional setup after loading the view.
        
        profileViewModel.fetchUsers(profileMV: profileViewModel.self)
        //=========================================================
        
        configueAlbumsTableView()
        
        //=========================================================
        
        subscribeToUserTabOnCell()
        
    }
}




extension ProfileVC {
    private func setupView() {
        self.title = "Profile"
    }
    
    
    private func configueAlbumsTableView() {
        
        albumsTableView.rx.setDelegate(self).disposed(by: disposalBag)
        
        albumsTableView.register(UINib(nibName: "myCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        profileViewModel.albums.bind(to: albumsTableView.rx.items(cellIdentifier: "cell",cellType: myCell.self)){
            (tableView, album, cell) in
            cell.textLabel?.text = album.title
        }.disposed(by: disposalBag)
    }
    
    
    private func subscribeToUserTabOnCell(){
        albumsTableView.rx.itemSelected.subscribe(onNext:{
            indexPath in
            
            
            self.navigationController?.pushViewController(AlbumDetailsVC(), animated: true)
            
        }).disposed(by: disposalBag)
        
        
    }
}

