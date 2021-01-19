//
//  AttractiveTableViewCell.swift
//  Attractive
//
//  Created by 周廷叡 on 2021/01/19.
//

import UIKit

class AttractiveHeaderCell: UITableViewCell {
    
    //MARK: outlet
    //ヘッダーのラベル
    @IBOutlet private var headerLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    //ヘッダーのセット
    public func setData(header: String) {
        headerLabel.text = header
    }
    
}
