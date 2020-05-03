//
//  EarbugCell.swift
//  CustomCollectionView
//
//  Created by Steve Hernandez on 5/2/20.
//  Copyright © 2020 Steve Hernandez. All rights reserved.
//

import UIKit
import TinyConstraints

class EarbugCell: UICollectionViewCell {

    // MARK: -- Properties

    private let profileImageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "Profile1"))
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.setDimensions(width: 48, height: 48)
        iv.layer.cornerRadius = 48 / 2
        iv.backgroundColor = .twitterBlue
        return iv
    }()

    private let feedArtImageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "FeedArt1"))
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.setDimensions(width: 400, height: 300)
        return iv
    }()

    private let captionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textColor = .darkGray
        label.text = "Yesterday at 8:38 PM"
        return label
    }()

    private let feedInfoContainer: UIView = {
        let container = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 85))
        //container.backgroundColor = .darkGray
        container.backgroundColor = .red
        return container
    }()

    private let feedCategoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textColor = .darkGray
        label.text = "JUKEBOX"
        return label
    }()

    private let feedMessageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textColor = .black
        label.text = "My favorite classics to listen to when feeling nostalgic about my childhood."
        return label
    }()

    private lazy var commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "comment"), for: .normal)
        button.tintColor = .darkGray
        button.setDimensions(width: 20, height: 20)
        button.addTarget(self, action: #selector(handleCommentTapped), for: .touchUpInside)
        return button
    }()

    private lazy var retweetButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "retweet"), for: .normal)
        button.tintColor = .darkGray
        button.setDimensions(width: 20, height: 20)
        button.addTarget(self, action: #selector(handleRetweetTapped), for: .touchUpInside)
        return button
    }()

    private lazy var likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "like"), for: .normal)
        button.tintColor = .darkGray
        button.setDimensions(width: 20, height: 20)
        button.addTarget(self, action: #selector(handleLikeTapped), for: .touchUpInside)
        return button
    }()

    private lazy var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "share"), for: .normal)
        button.tintColor = .darkGray
        button.setDimensions(width: 20, height: 20)
        button.addTarget(self, action: #selector(handleShareTapped), for: .touchUpInside)
        return button
    }()

    private let infoLabel = UILabel()

    // MARK: -- Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white

        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor,
                                left: leftAnchor,
                                paddingTop: 8,
                                paddingLeft: 8
        )

        let stack = UIStackView(arrangedSubviews: [infoLabel, captionLabel])
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 2

        addSubview(stack)
        stack.anchor(top: profileImageView.topAnchor,
                     left: profileImageView.rightAnchor,
                     paddingTop: 6,
                     paddingLeft: 12,
                     paddingRight: 12
        )

        infoLabel.font = UIFont.boldSystemFont(ofSize: 14)
        infoLabel.text = "Thomas Winford"

        addSubview(feedArtImageView)
        //feedArtImageView.top(to: stack, offset: 45)
        feedArtImageView.anchor(top: stack.topAnchor, left: leftAnchor, paddingTop: 45)

        // Info section
        /*let feedInfoStack = UIStackView(arrangedSubviews: [feedCategoryLabel, feedMessageLabel])
        feedInfoStack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 2

        feedInfoContainer.addSubview(feedInfoStack)
        feedInfoContainer.bringSubviewToFront(feedInfoStack)
        feedInfoContainer.setDimensions(width: 400, height: 100)

        addSubview(feedInfoContainer)

        feedInfoContainer.bottom(to: feedArtImageView, offset: 25)
        feedInfoStack.top(to: feedInfoContainer, offset: 0)
        feedInfoStack.left(to: feedInfoContainer, offset: 10)
        feedInfoStack.bottom(to: feedInfoContainer, offset: 10)*/

        let actionStack = UIStackView(arrangedSubviews: [commentButton, retweetButton, likeButton, shareButton])
        actionStack.axis = .horizontal
        actionStack.spacing = 72

        addSubview(actionStack)
        actionStack.centerX(inView: self)
        actionStack.anchor(bottom: bottomAnchor, paddingBottom: 8)

        let underlineView = UIView()
        underlineView.backgroundColor = .systemGroupedBackground
        addSubview(underlineView)
        underlineView.anchor(left: leftAnchor,
                            bottom: bottomAnchor,
                            right: rightAnchor,
                            height: 1)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: -- Selectors
    @objc func handleCommentTapped() {

    }

    @objc func handleRetweetTapped() {

    }

    @objc func handleLikeTapped() {

    }

    @objc func handleShareTapped() {

    }


    // MARK: -- Helpers
}
