//
//  CustomCollectionViewCell.swift
//  CollectionViewInsideTableView
//
//  Created by Fazlı Altun on 1.03.2024.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    lazy var myLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        return myLabel
    }()
    
    lazy var myImageView: UIImageView = {
        let myImageView = UIImageView()
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        return myImageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        NSLayoutConstraint.activate([
            myImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            myImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            myImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            
            myLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 10),
            myLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            myLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: Model) {
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
    }
}
