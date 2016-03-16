//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by nguyen trung quang on 3/16/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var imgAvata: UIImageView!
    @IBOutlet weak var lblStar: UILabel!
    @IBOutlet weak var lblFork: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    var repo: GithubRepo! {
        didSet {
            lblTitle.text = repo.name
            lblAuthor.text = repo.ownerHandle
            lblStar.text = "\(repo.stars!)"
            lblFork.text = "\(repo.forks!)"
            imgAvata.setImageWithURL(NSURL(string: repo.ownerAvatarURL!)!)
        }
    }

}
