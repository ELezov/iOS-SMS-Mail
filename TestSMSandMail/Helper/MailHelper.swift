//
//  MailHelper.swift
//  TestSMSandMail
//
//  Created by Eugene Lezov on 15.08.2018.
//  Copyright © 2018 Eugene Lezov. All rights reserved.
//

import Foundation
import MessageUI

class MailHelper {
    
    static func configureMailComposerVC(toRecepients: [String], subject: String, body: String) -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.setToRecipients(toRecepients)
        mailComposerVC.setSubject(subject)
        mailComposerVC.setMessageBody(body, isHTML: false)
        return mailComposerVC
    }
    
    static func openMailApp(toRecepient: String, subject: String, body: String) {
        let coded = "mailto:\(toRecepient)?subject=\(subject)&body=\(body)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        if let emailURL: NSURL = NSURL(string: coded!) {
            if UIApplication.shared.canOpenURL(emailURL as URL) {
                UIApplication.shared.openURL(emailURL as URL)
            }
        }
    }
   
}
