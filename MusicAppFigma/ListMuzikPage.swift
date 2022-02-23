//
//  ListMuzikPage.swift
//  MusicAppFigma
//
//  Created by Doolot on 23/2/22.
//

import Foundation
import UIKit
import SnapKit
class ListMuzikPage: UIViewController {
    
    private lazy var topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 1, green: 0.781, blue: 0.433, alpha: 1)
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
    }()
    private lazy var toolView: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var backButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        view.tintColor = .black
        view.addTarget(nil, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var heartButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "suit.heart"), for: .normal)
        view.tintColor = .black
        view.addTarget(nil, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var downloadButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "square.and.arrow.down"), for: .normal)
        view.tintColor = .black
        view.addTarget(nil, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()
    private lazy var topImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "The Band Torso")
        view.layer.cornerRadius = 0
        return view
    }()
    private lazy var topLabel1: UILabel = {
        let view = UILabel()
        view.text = "Party Songs"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var descriptionLabel2: UILabel = {
        let view = UILabel()
        view.text = "30 songs to sing in the shower"
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 20)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    //============ tableView
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        view.register(MusikCell.self, forCellReuseIdentifier: "MusikCell")
        return view
    }()
    var musik: [CellModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    func setupView() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top)
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        topView.addSubview(toolView)
        toolView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().dividedBy(6)
        }
        toolView.addSubview(backButton)
        backButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(15)
        }
        toolView.addSubview(downloadButton)
        downloadButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-15)
        }
        toolView.addSubview(heartButton)
        heartButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalTo(downloadButton.snp.left).offset(-15)
        }
        topView.addSubview(topImage)
        topImage.snp.makeConstraints { make in
            make.top.equalTo(toolView.snp.bottom).offset(5)
            make.left.right.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.6)
        }
        topView.addSubview(topLabel1)
        topLabel1.snp.makeConstraints { make in
            make.top.equalTo(topImage.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(30)
        }
        topView.addSubview(descriptionLabel2)
        descriptionLabel2.snp.makeConstraints { make in
            make.top.equalTo(topLabel1.snp.bottom)
            make.left.equalToSuperview().offset(30)
        }
        //======tableView
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        musik.append(CellModel(image: "musikList1", title: "Electric Feel", podTitle: "MGMT", image2: "option (1)"))
        musik.append(CellModel(image: "musikList1", title: "Pumped up kicks", podTitle: "Foster the people", image2: "option (1)"))
        musik.append(CellModel(image: "musikList1", title: "September", podTitle: "Earth wind & fire", image2: "option (1)"))
        musik.append(CellModel(image: "musikList1", title: "Get Lucky", podTitle: "Duft Punk", image2: "option (1)"))
        musik.append(CellModel(image: "musikList1", title: "I don’t care (Acoustic)", podTitle: "Ed Sheeran", image2: "option (1)"))
        musik.append(CellModel(image: "musikList1", title: "Willow", podTitle: "Taylor Swift", image2: "option (1)"))
        musik.append(CellModel(image: "musikList1", title: "Electric Feel", podTitle: "MGMT", image2: "option (1)"))
    }
    @objc func addTapped(sender: UIButton){
        if sender.imageView?.image == UIImage(systemName: "chevron.left") {
            navigationController?.pushViewController(MainPageController(), animated: true)
        }
    }
}
extension ListMuzikPage: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musik.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let musicsModel = musik[index]
        let cell = MusikCell()
        
        
        cell.imageCell.image = UIImage(named: musicsModel.image)
        cell.titleName.text = String(musicsModel.title)
        cell.podTitle.text = String(musicsModel.podTitle)
        cell.imageCell2.image = UIImage(named: musicsModel.image2)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        let playerVC = PlayerViewController()
        self.present(playerVC, animated: true , completion: nil)
    }
}

