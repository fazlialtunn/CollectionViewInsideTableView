//
//  CollectionTableViewCell.swift
//  CollectionViewInsideTableView
//
//  Created by Fazlı Altun on 1.03.2024.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    static let identifier = "CollectionTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
