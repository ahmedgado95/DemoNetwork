//
//  SearchModel.swift
//  NetWorkLayer
//
//  Created by A on 25/02/2020.
//  Copyright © 2020 Ahmed Gado. All rights reserved.
//

import Foundation

struct SearchModel : Codable {
    
    let data : [SearchData]?
    let key : Int?
}

struct SearchData :Codable {
    let id : Int?
    let cate : Int?
    let cate_id : Int?
    let service : Int?
    let status : Int?
    let title : String?
    let kitchen_num : Int?
    let full_address : String?
    let map_link: String?
    let area : String?
    let neighborhood : String?
    let latitude : Double?
    let longitude : Double?
    let photo : String?
    let bath_num : Int?
    let build_num : Int?
    let amount_insurance : Int?
    let total_amount : Int?
    let negotiable : Int?
    let auction : Int?
    let commission : Int?
    let floor_num : Int?
    let build_image : String?
    let apartments_num : Int?
    let apartment_space : Int?
    let street_space: Int?
    let width : Int?
    let hight: Int?
    let price_of_one_meter : Int?
    let year_of_building : Int?
    let electrical_meter_num : Int?
    let electrical_public : Int?
    let water_meter_num : Int?
    let water_public : Int?
    let rooms_num : Int?
    let shop_num: Int?
    let desk_num:  Int?
    let hall_num: Int?
    let describtion : String?
    let garden_space : Int?
    let special : Int?
    let active : Int?
    let taqbel: Int?
    let waqf: Int?
    let stare : Int?
    let documented: Int?
    let auction_date : String?
    let rent_date : String?
    let day_rent : Int?
    let price_for_month : Int?
    let price_for_3month : Int?
    let price_for_6month : Int?
    let price_for_12month : Int?
    let created_at : String?
    let updated_at : String?
    let service_name : String?
}
