//
//  ViewController+Actions.swift
//  TestSMSandMail
//
//  Created by Eugene Lezov on 23.08.2018.
//  Copyright © 2018 Eugene Lezov. All rights reserved.
//

import Foundation
import MessageUI

extension ViewController {
    
    func showEmail() {
        let mailVC = MailHelper.configureMailComposerVC(
            toRecepients: [Constants.defaultMail],
            subject: Constants.defaultSubject,
            body: Constants.defaultBody)
        
        mailVC.mailComposeDelegate = self
        
        if MFMailComposeViewController.canSendMail() {
            self.present(mailVC, animated: true, completion: nil)
        }
    }
    
    func showEmailUsingURL() {
        MailHelper.openMailApp(toRecepient: Constants.defaultMail,
                               subject: Constants.defaultSubject,
                               body: Constants.defaultBody )
    }
    
    func showSMS() {
        let messageVC = SMSHelper.configureSMSComposerVC(
            toRecepients: [Constants.defaultNumber],
            subject: Constants.defaultSubject,
            body: Constants.defaultBody)
        
        messageVC.messageComposeDelegate = self;
        
        if MFMessageComposeViewController.canSendText() {
            self.present(messageVC, animated: true, completion: nil)
        }
    }
    
    func showSMSUsingURL() {
        SMSHelper.openSMSApp(toRecepient: Constants.defaultNumber,
                             subject: Constants.defaultSubject,
                             body: Constants.defaultBody)
    }
    
}
