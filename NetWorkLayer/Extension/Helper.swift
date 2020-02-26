//
//  Helper.swift
//
//  Created by A on 26/01/2020.
//  Copyright © 2020 ahmed gado. All rights reserved.
//

import UIKit
import Kingfisher
import NVActivityIndicatorView
class Helper{

static var helper = Helper()
    func setImageWithg(image: String,withImageView theIV: UIImageView, andPlaceholder theplcaeholder: UIImage?)  {
        // set the image
        let imageURL = image
        let optionsInfos: KingfisherOptionsInfo = [.transition(ImageTransition.fade(1))]
        if let url = URL(string: imageURL) {
//                        theIV.kf.indicatorType = .activity
            theIV.kf.setImage(with: url, placeholder: theplcaeholder, options: optionsInfos, progressBlock: nil)
        }
    }
}
extension UITableView {
    func registerCellNib<Cell: UITableViewCell>(cellClass: Cell.Type){
        self.register(UINib(nibName: String(describing: Cell.self), bundle: nil), forCellReuseIdentifier: String(describing: Cell.self))
    }
    func dequeue<Cell: UITableViewCell>() -> Cell{
        let identifier = String(describing: Cell.self)
        
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
            fatalError("Error in cell")
        }
        return cell
    }
}
extension UIView {
    func dropShadow(scale: Bool = true) {
        self.layer.shadowColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 3
    }
}
extension UIViewController : NVActivityIndicatorViewable {
    
    
    
    func showProgress(){
        //        NVActivityIndicatorView.DEFAULT_COLOR = orangeColor
        NVActivityIndicatorView.DEFAULT_TYPE = NVActivityIndicatorType.ballScaleMultiple
        self.startAnimating()
    }
    
    func hideProgress(){
        self.stopAnimating()
        
    }
}
