//
//  ViewController.swift
//  MusicAppFigma
//
//  Created by Doolot on 18/2/22.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    private lazy var musicImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "musicImage")
        return view
    }()
    private lazy var greetingsLabel: UILabel = {
        let view = UILabel()
        view.text = "Let the music take you away..."
        view.adjustsFontSizeToFitWidth = true
        view.font = UIFont.boldSystemFont(ofSize: 40)
        view.numberOfLines = 0
        return view
    }()
    private lazy var fonImage1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "fonImage1")
        return view
    }()
    private lazy var musicApparat: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "The Band Speaker 2")
        return view
    }()
    private lazy var nextButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        view.tintColor = .white
        view.backgroundColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        view.layer.cornerRadius = self.view.frame.width / 11
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 0
        view.layer.shadowOpacity = 0
        view.addTarget(nil, action: #selector(addTapped(sender:)), for: .touchUpInside)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    private func setupViews(){
        view.addSubview(musicImage)
        musicImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top).offset(40)
            make.left.equalToSuperview().offset(30)
        }
        view.addSubview(greetingsLabel)
        greetingsLabel.snp.makeConstraints { make in
            make.top.equalTo(musicImage.snp.bottom).offset(10)
            make.left.equalTo(musicImage)
            make.right.equalToSuperview().offset(30)
            make.height.equalToSuperview().dividedBy(9)
        }
        view.addSubview(fonImage1)
        fonImage1.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.85)
        }
        fonImage1.addSubview(musicApparat)
        musicApparat.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(30)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(view.frame.width * 0.85)
        }
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.18)
            make.height.equalTo(view.frame.width * 0.18)
            make.bottom.equalTo(view.safeArea.bottom).offset(-20)
        }
    }
    @objc func addTapped(sender: UIButton){
        if sender.imageView?.image == UIImage(systemName: "chevron.right") {
            navigationController?.pushViewController(MainPageController(), animated: true)
        }
    }
}

