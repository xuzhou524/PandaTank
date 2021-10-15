//
//  MainTableViewCell.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/15.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    var bgImageView: UIImageView = {
        let imageView =  UIImageView()
        imageView.backgroundColor = UIColor.orange
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    var titleLabel: UILabel = {
        let label =  UILabel()
        label.font = XZFontWithSize(16)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        self.setup();
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup()->Void{
        self.selectionStyle = .none
        self.backgroundColor = UIColor.white
        
        self.contentView.addSubview(bgImageView)
        bgImageView.snp.makeConstraints{ (make) -> Void in
            make.top.equalToSuperview().offset(5)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(100)
            make.bottom.equalToSuperview().offset(-5)
        }
        
        bgImageView.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints{ (make) -> Void in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.centerY.equalToSuperview()
        }
    
    }

}
