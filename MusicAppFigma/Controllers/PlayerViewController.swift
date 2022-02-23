//
//  PlayerViewController.swift
//  MusicAppFigma
//
//  Created by Doolot on 23/2/22.
//

import Foundation
import UIKit
import SnapKit
class PlayerViewController: UIViewController {
    
    private lazy var image1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Player")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(image1)
        image1.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
