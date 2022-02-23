//
//  MuzikCell.swift
//  MusicAppFigma
//
//  Created by Doolot on 23/2/22.
//
import Foundation
import UIKit
import SnapKit

class MusikCell: UITableViewCell { // TestCell Это кастомная ячейка которая унаслед-а от баз класса ячейки(баз кл это UITableViewCell )
    
    lazy var imageCell: UIImageView = {
        let view = UIImageView()
        return view
    }()
    lazy var titleName: UILabel = {
        let view = UILabel()
        view.font = UIFont.boldSystemFont(ofSize: 20)
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    lazy var podTitle: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15)
        view.textColor = .lightGray
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    lazy var imageCell2: UIImageView = {
        let view = UIImageView()
        return view
    }()
   
    
    override func layoutSubviews() { // layoutSubviews это метод внутри баз кл ячейки (UITableViewCell) и вызывается тогда когда выз UITableViewCell т.е выз тогда когда выз  TestCell
        addSubview(imageCell)
        imageCell.snp.makeConstraints{ make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.width.equalTo((superview?.frame.width)! / 5)
            make.height.equalTo((superview?.frame.height)! / 5)
        }
        addSubview(titleName)
        titleName.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(15)
            make.width.equalTo((superview?.frame.width)! / 1.8)
            make.left.equalTo(imageCell.snp.right).offset(15)
        }
        addSubview(podTitle)
        podTitle.snp.makeConstraints { make in
            make.top.equalTo(titleName.snp.bottom).offset(5)
            make.left.equalTo(imageCell.snp.right).offset(15)
        }
        addSubview(imageCell2)
        imageCell2.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-35)
        }
        
    }
}
