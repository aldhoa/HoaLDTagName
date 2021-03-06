//
//  HLMentionTableViewCell.swift
//  HLMention
//
//  Created by Lưu Đức Hoà on 4/2/20.
//  Copyright © 2020 Luu Duc Hoa. All rights reserved.
//

import UIKit

class HLMentionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hlImageView: UIImageView!
    @IBOutlet weak var hlLblName: UILabel!
    private var mentionInfo: HLMentionInfo!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupImageView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func display(_ mentionInfo: HLMentionInfo) {
        self.mentionInfo = mentionInfo
        self.hlLblName.text = mentionInfo.kName
        self.hlImageView.image = mentionInfo.kImage
    }
    
    func setupImageView() {
        self.hlImageView.clipsToBounds = true
        self.hlImageView.layer.cornerRadius = hlImageView.bounds.height / 2
    }
    
    func getMentionInfo() -> HLMentionInfo {
        return mentionInfo
    }
}
