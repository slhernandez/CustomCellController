//
//  FeedController.swift
//  CustomCollectionView
//
//  Created by Steve Hernandez on 5/2/20.
//  Copyright © 2020 Steve Hernandez. All rights reserved.
//

import UIKit

private let reuseIdentifier = "EarbugCell"

class FeedController: UICollectionViewController {


    // MARK: -- Properties

    // MARK: -- Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    // MARK: -- Helpers
    func configureUI() {

        // register the UICollectionViewCell
        collectionView.register(EarbugCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.backgroundColor = .feedBackgroundGray

        // Earbug Image for the navigation bar
        let imageView = UIImageView(image: UIImage(named: "ebLogoNavBar"))
        imageView.contentMode = .scaleAspectFit
        imageView.setDimensions(width: 120, height: 37)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: imageView)

        // Settings icon for rightBarButtonItem
        let settingsImageView = UIImageView(image: UIImage(named: "settingsIconNavBar"))
        settingsImageView.contentMode = .scaleAspectFit
        settingsImageView.setDimensions(width: 24, height: 24)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: settingsImageView) 
    }
}



// MARK: -- UICollectionViewDelegate/DataSource

extension FeedController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! EarbugCell
        return cell
    }
}

// MARK: -- UICollectionViewDelegateFlowLayout

extension FeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 540)
    }
}
