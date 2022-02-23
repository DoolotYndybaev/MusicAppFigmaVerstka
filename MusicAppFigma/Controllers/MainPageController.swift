//
//  MainPageController.swift
//  MusicAppFigma
//
//  Created by Doolot on 18/2/22.
//

import Foundation
import UIKit
import SnapKit
class MainPageController: UIViewController{
    
    
    private lazy var toolBarView: UIView = {
        let view  = UIView()
        view.backgroundColor = .white
        return view
    }()
    private lazy var imageToolBar: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "microfon")
        return view
    }()
    private lazy var greetingsLabelToolBar: UILabel = {
        let view = UILabel()
        view.text = "Hi, Martha"
        view.adjustsFontSizeToFitWidth = true
        view.font = UIFont.boldSystemFont(ofSize: 40)
        return view
    }()
    private lazy var menuButtonToolBar: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "text.justify"), for: .normal)
        view.tintColor = .black
        return view
    }()
    private lazy var viewForPlaceHolder: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.91, green: 0.934, blue: 0.954, alpha: 1)
        view.layer.cornerRadius = 10
        return view
    }()
    private lazy var imageInViewPlaceHolder: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "magnifyingglass")
        view.tintColor = .black
        return view
    }()
    private lazy var placeHolder: UITextField = {
        let view = UITextField()
        view.placeholder = "Search music"
        return view
    }()
    private lazy var popularLabel: UILabel = {
        let view = UILabel()
        view.text = "Popular"
        view.font = UIFont.boldSystemFont(ofSize: 20)
        return view
    }()
    private lazy var topAlbumsLabel: UILabel = {
        let view = UILabel()
        view.text = "Top Albums"
        view.font = UIFont.boldSystemFont(ofSize: 20)
        return view
    }()
    // ==============ScrollView============
    
    private lazy var scroll1: UIScrollView = {
        let view = UIScrollView()
        view.showsHorizontalScrollIndicator = false
        return view
    }()
    private lazy var stackView1: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 15
        return view
    }()
    private lazy var view1Scroll1: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.layer.borderWidth = 0.3
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 0
        view.layer.shadowOpacity = 0.0
        return view
    }()
    private lazy var button1Scroll1: UIButton = {
        let view = UIButton()
        view.setBackgroundImage(UIImage(named: "The Band Torso"), for: .normal)
        view.clipsToBounds = true
        view.addTarget(nil, action: #selector(addTapped(sender:)), for: .touchUpInside)
        view.backgroundColor = UIColor(red: 1, green: 0.781, blue: 0.433, alpha: 1)
        return view
    }()
    private lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.text = "30 songs to sing in the shower"
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 20)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var baseLabel: UILabel = {
        let view = UILabel()
        view.text = "Party Songs"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    
    
    private lazy var view2Scroll1: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.layer.borderWidth = 0.3
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 0
        view.layer.shadowOpacity = 0.0
        return view
    }()
    private lazy var button2Scroll1: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "The Band Show"), for: .normal)
        view.clipsToBounds = true
        view.backgroundColor = UIColor(red: 0.65, green: 0.725, blue: 1, alpha: 1)
        return view
    }()
    private lazy var description2Label1: UILabel = {
        let view = UILabel()
        view.text = "30 songs to sing in the shower"
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 20)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var base2Label1: UILabel = {
        let view = UILabel()
        view.text = "Songs to sing out loud"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var view3Scroll1: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.layer.borderWidth = 0.3
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 0
        view.layer.shadowOpacity = 0.0
        return view
    }()
    private lazy var button3Scroll1: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "The Band Band Practice"), for: .normal)
        view.clipsToBounds = true
        view.backgroundColor = UIColor(red: 0.734, green: 0.646, blue: 1, alpha: 1)
        return view
    }()
    private lazy var description3Label1: UILabel = {
        let view = UILabel()
        view.text = "30 songs to sing in the shower"
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 20)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var base3Label1: UILabel = {
        let view = UILabel()
        view.text = "Chill hits"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    
    
    private lazy var scroll2: UIScrollView = {
        let view = UIScrollView()
        view.showsHorizontalScrollIndicator = false
        return view
    }()
    private lazy var stackView2: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 15
        return view
    }()
    private lazy var view1Scroll2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.layer.borderWidth = 0.3
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 0
        view.layer.shadowOpacity = 0.0
        return view
    }()
    private lazy var button1Scroll2: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "everething"), for: .normal)
        view.addTarget(nil, action: #selector(addTapped(sender:)), for: .touchUpInside)
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
    private lazy var baseLabel2: UILabel = {
        let view = UILabel()
        view.text = "Party Songs"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    
    
    private lazy var view2Scroll2: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.layer.borderWidth = 0.3
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 0
        view.layer.shadowOpacity = 0.0
        return view
    }()
    private lazy var button2Scroll2: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "weekand"), for: .normal)
        view.clipsToBounds = true
        view.backgroundColor = UIColor(red: 0.65, green: 0.725, blue: 1, alpha: 1)
        return view
    }()
    private lazy var description2Label2: UILabel = {
        let view = UILabel()
        view.text = "30 songs to sing in the shower"
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 20)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var base2Label2: UILabel = {
        let view = UILabel()
        view.text = "Songs to sing out loud"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var view3Scroll2: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.layer.borderWidth = 0.3
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 0
        view.layer.shadowOpacity = 0.0
        return view
    }()
    private lazy var button3Scroll2: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "showcass"), for: .normal)
        view.clipsToBounds = true
        view.backgroundColor = UIColor(red: 0.734, green: 0.646, blue: 1, alpha: 1)
        return view
    }()
    private lazy var description3Label2: UILabel = {
        let view = UILabel()
        view.text = "30 songs to sing in the shower"
        view.textColor = .lightGray
        view.font = UIFont.systemFont(ofSize: 20)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    private lazy var base3Label2: UILabel = {
        let view = UILabel()
        view.text = "Chill hits"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    private lazy var baseScroll: UIScrollView = {
        let view = UIScrollView()
        view.showsHorizontalScrollIndicator = false
        view.showsVerticalScrollIndicator = true
        return view
    }()
    private lazy var baseStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 5
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    private func setupView(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(toolBarView)
        toolBarView.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top)
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().dividedBy(9.5)
        }
        toolBarView.addSubview(imageToolBar)
        imageToolBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.left.equalToSuperview().offset(15)
        }
        toolBarView.addSubview(menuButtonToolBar)
        menuButtonToolBar.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-25)
        }
        toolBarView.addSubview(greetingsLabelToolBar)
        greetingsLabelToolBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(55)
            make.right.equalToSuperview().offset(-30)
            make.height.equalToSuperview().dividedBy(1.2)
        }
        view.addSubview(viewForPlaceHolder)
        viewForPlaceHolder.snp.makeConstraints { make in
            make.top.equalTo(toolBarView.snp.bottom).offset(15)
            make.right.equalToSuperview().offset(-20)
            make.left.equalToSuperview().offset(20)
            make.height.equalToSuperview().dividedBy(15.5)
        }
        viewForPlaceHolder.addSubview(imageInViewPlaceHolder)
        imageInViewPlaceHolder.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(10)
        }
        viewForPlaceHolder.addSubview(placeHolder)
        placeHolder.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalTo(viewForPlaceHolder.snp.right)
            make.left.equalToSuperview().offset(30)
        }
        // ============BaseScroll
        view.addSubview(baseScroll)
        baseScroll.snp.makeConstraints { make in
            make.top.equalTo(viewForPlaceHolder.snp.bottom)
            make.bottom.equalToSuperview()
            make.left.right.equalToSuperview()
        }
        baseScroll.addSubview(baseStackView)
        baseStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(view.frame.height * 1)
        }
        //===================Scroll
        baseStackView.addSubview(popularLabel)
        popularLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalToSuperview().dividedBy(15)
            make.left.equalToSuperview().offset(20)
        }
        baseStackView.addSubview(scroll1)
        scroll1.snp.makeConstraints { make in
            make.top.equalTo(popularLabel.snp.bottom)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(view.frame.height / 2.3)
        }
        scroll1.addSubview(stackView1)
        stackView1.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(view.frame.width * 2)
            make.height.equalToSuperview()
        }
        stackView1.addArrangedSubview(view1Scroll1)
        view1Scroll1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo((view.frame.width * 2) / 3)
        }
        view1Scroll1.addSubview(button1Scroll1)
        button1Scroll1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        view1Scroll1.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(button1Scroll1.snp.bottom).offset(5)
            make.height.equalToSuperview().dividedBy(12)
            make.left.right.equalToSuperview()
        }
        view1Scroll1.addSubview(baseLabel)
        baseLabel.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom)
            make.height.equalToSuperview().dividedBy(12)
            make.left.equalToSuperview().offset(8)
        }
        
        // ==== 2view
        stackView1.addArrangedSubview(view2Scroll1)
        view2Scroll1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo((view.frame.width * 2) / 3)
        }
        view2Scroll1.addSubview(button2Scroll1)
        button2Scroll1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        view2Scroll1.addSubview(description2Label1)
        description2Label1.snp.makeConstraints { make in
            make.top.equalTo(button2Scroll1.snp.bottom).offset(5)
            make.height.equalToSuperview().dividedBy(12)
            make.left.right.equalToSuperview()
        }
        view2Scroll1.addSubview(base2Label1)
        base2Label1.snp.makeConstraints { make in
            make.top.equalTo(description2Label1.snp.bottom)
            make.height.equalToSuperview().dividedBy(12)
            make.left.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-5)
        }
        //==== 3view
        stackView1.addArrangedSubview(view3Scroll1)
        view3Scroll1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo((view.frame.width * 2) / 3)
        }
        view3Scroll1.addSubview(button3Scroll1)
        button3Scroll1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        view3Scroll1.addSubview(description3Label1)
        description3Label1.snp.makeConstraints { make in
            make.top.equalTo(button3Scroll1.snp.bottom).offset(5)
            make.height.equalToSuperview().dividedBy(12)
            make.left.right.equalToSuperview()
        }
        view3Scroll1.addSubview(base3Label1)
        base3Label1.snp.makeConstraints { make in
            make.top.equalTo(description3Label1.snp.bottom)
            make.height.equalToSuperview().dividedBy(12)
            make.left.equalToSuperview().offset(8)
        }
        
        
        // ======== 2Sroll
        baseScroll.addSubview(topAlbumsLabel)
        topAlbumsLabel.snp.makeConstraints { make in
            make.top.equalTo(scroll1.snp.bottom).offset(10)
            make.height.equalToSuperview().dividedBy(15)
            make.left.equalToSuperview().offset(20)
        }
        baseScroll.addSubview(scroll2)
        scroll2.snp.makeConstraints { make in
            make.top.equalTo(topAlbumsLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(view.frame.height / 2.3)
            make.bottom.equalToSuperview()
        }
        scroll2.addSubview(stackView2)
        stackView2.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(view.frame.width * 2)
            make.height.equalToSuperview()
        }
        stackView2.addArrangedSubview(view1Scroll2)
        view1Scroll2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo((view.frame.width * 2) / 3)
        }
        view1Scroll2.addSubview(button1Scroll2)
        button1Scroll2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        view1Scroll2.addSubview(descriptionLabel2)
        descriptionLabel2.snp.makeConstraints { make in
            make.top.equalTo(button1Scroll2.snp.bottom).offset(5)
            make.height.equalToSuperview().dividedBy(15)
            make.left.right.equalToSuperview()
        }
        view1Scroll2.addSubview(baseLabel2)
        baseLabel2.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel2.snp.bottom)
            make.height.equalToSuperview().dividedBy(15)
            make.left.equalToSuperview().offset(8)
        }
        
        // ==== 2view
        stackView2.addArrangedSubview(view2Scroll2)
        view2Scroll2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo((view.frame.width * 2) / 3)
        }
        view2Scroll2.addSubview(button2Scroll2)
        button2Scroll2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        view2Scroll2.addSubview(description2Label2)
        description2Label2.snp.makeConstraints { make in
            make.top.equalTo(button2Scroll2.snp.bottom).offset(5)
            make.height.equalToSuperview().dividedBy(15)
            make.left.right.equalToSuperview()
        }
        view2Scroll2.addSubview(base2Label2)
        base2Label2.snp.makeConstraints { make in
            make.top.equalTo(description2Label2.snp.bottom)
            make.height.equalToSuperview().dividedBy(15)
            make.left.equalToSuperview().offset(8)
        }
        //==== 3view
        stackView2.addArrangedSubview(view3Scroll2)
        view3Scroll2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo((view.frame.width * 2) / 3)
        }
        view3Scroll2.addSubview(button3Scroll2)
        button3Scroll2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        view3Scroll2.addSubview(description3Label2)
        description3Label2.snp.makeConstraints { make in
            make.top.equalTo(button3Scroll2.snp.bottom).offset(5)
            make.height.equalToSuperview().dividedBy(15)
            make.left.right.equalToSuperview()
        }
        view3Scroll2.addSubview(base3Label2)
        base3Label2.snp.makeConstraints { make in
            make.top.equalTo(description3Label2.snp.bottom)
            make.height.equalToSuperview().dividedBy(15)
            make.left.equalToSuperview().offset(8)
        }
    }
    @objc func addTapped(sender: UIButton){
        if sender.imageView?.image == UIImage(systemName: "everething") {
            navigationController?.pushViewController(ListMuzikPage(), animated: true)
        }
    }
}

