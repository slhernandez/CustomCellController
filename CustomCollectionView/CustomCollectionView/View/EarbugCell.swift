//
//  EarbugCell.swift
//  CustomCollectionView
//
//  Created by Steve Hernandez on 5/2/20.
//  Copyright © 2020 Steve Hernandez. All rights reserved.
//

import UIKit

class EarbugCell: UICollectionViewCell {

    // MARK: -- Properties

    // MARK: -- Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
