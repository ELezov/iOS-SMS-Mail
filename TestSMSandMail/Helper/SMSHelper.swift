//
//  SMSHelper.swift
//  TestSMSandMail
//
//  Created by Eugene Lezov on 20.08.2018.
//  Copyright © 2018 Eugene Lezov. All rights reserved.
//

import Foundation
import MessageUI

class SMSHelper {
    
    static func configureSMSComposerVC(toRecepients: [String], subject: String, body: String) -> MFMessageComposeViewController {
        let smsVC = MFMessageComposeViewController()
        smsVC.body = body;
        smsVC.recipients = toRecepients
        smsVC.subject = subject
        return smsVC;
    }
    
    static func openSMSApp(toRecepient: String, subject: String, body: String) {
        let coded = "sms:\(toRecepient)&subject=\(subject)&body=\(body)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        if let smsURL: NSURL = NSURL(string: coded!) {
            if UIApplication.shared.canOpenURL(smsURL as URL) {
                UIApplication.shared.openURL(smsURL as URL)
            }
        }
    }
    
}
