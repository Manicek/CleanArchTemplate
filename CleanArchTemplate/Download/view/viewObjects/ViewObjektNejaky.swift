//
//  ViewObjektNejaky.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 20.03.2023.
//

import SwiftUI

struct ViewObjektNejaky {
    let locaizledString: LocalizedStringKey
    
    static func fromDomainObjekt(_ objekt: DomainObjektNejaky) ->  ViewObjektNejaky {
        ViewObjektNejaky(locaizledString: LocalizedStringKey(stringLiteral: objekt.string))
    }
}
