//
//  GlobalDefinitions.swift
//  Soccer
//
//  Created by Andrey Chernyshev on 16.01.2021.
//

import Foundation

final class GlobalDefinitions {
    static let domain = "https://calisthenics.thinkaboutapps.com"
    static let apiKey = "hZJtjfDEKQzzAaQ8oMYg"
    
    static let otterScaleHost = "https://api.korrekted.com"
    static let otterScaleApiKey = "lLF8kK6FegqVvL4W"
    
    static let applicationTag = "CALISTHENICS"
    static let amplitudeApiKey = "ad1acf62a1718340f0958c15b7b9dcfc"
    
    static let termsOfServiceUrl = URL(string: "https://thinkaboutapps.com/terms")!
    static let privacyPolicyUrl = URL(string: "https://thinkaboutapps.com/policy")!
    static let contactUsUrl = URL(string: "https://thinkaboutapps.com/contact")!
    
    enum Paygate {
        static let defaultLifetime = "train.calisthenics.endless"
        static let defaultMonthly = "train.calisthenics.monthly"
    }
}
