//
//  SearchTableCell.swift
//
//  Created by A on 27/10/2019.
//  Copyright © 2019 ahmed gado. All rights reserved.
//

import UIKit

class SearchTableCell: UITableViewCell {
    @IBOutlet weak var onImageView: UIImageView!
    @IBOutlet weak var delImage: UIImageView!
    @IBOutlet weak var delView: UIView!
    @IBOutlet weak var viewView: UIView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    var editDelButton: (()->())?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stateLabel.layer.cornerRadius = 15
       
        imageCell.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        viewView.dropShadow()

    }

    override func layoutSubviews() {
        let f = contentView.frame
        let fr = f.inset(by: UIEdgeInsets(top: 4, left: 10, bottom: 4, right: 10))
        contentView.frame = fr
    }
    func configerCell(item: SearchData)  {
        Helper.helper.setImageWithg(image: Constants.uRLBASEIMAGE + item.photo! , withImageView:self.imageCell, andPlaceholder: #imageLiteral(resourceName: "images"))
            nameLabel.text = item.title
        let service  = item.service
        if service == 1 {
            stateLabel.text = "Sale"
            priceLabel.text = "\( item.total_amount ?? 00000000) " + " SAR"
        }else if service == 0 {
            stateLabel.text = "Rent"
            priceLabel.text = "\( item.price_for_month ?? 00000000) " + " SAR"
        }
            desLabel.text = item.describtion
    }
    
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
