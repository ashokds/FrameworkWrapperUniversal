import Foundation
import DocuSignSDK

public class Login {
    
    public func login() {
        let customAccessToken = ""
        let customUserId = ""
        let customAccountId = ""
        let customUserName = ""
        let email = ""
        let password = ""
        let demoHostApi = URL(string: "https://stage.docusign.net/restapi")
        let integratorKey = "DOCU-190f53a1-4615-4928-9709-5aa9cc3c60d3"
        
        guard let demoHostUrl = demoHostApi else {
            return
        }
        
        if
            !customAccessToken.isEmpty && !customUserId.isEmpty && !customUserName.isEmpty && !customAccountId.isEmpty {
            DSMManager.login(withAccessToken: customAccessToken, accountId: customAccountId, userId: customUserId, userName: customUserName, email: email, host: demoHostUrl, integratorKey: integratorKey) { accountInfo, error in
                self.handlePostLogin(accountInfo: accountInfo, error: error)
            }
        } else {
            DSMManager.login(withEmail: email,
                             password: password,
                             integratorKey: integratorKey,
                             host: demoHostUrl) { accountInfo, error in
                                self.handlePostLogin(accountInfo: accountInfo, error: error)
            }
        }
    }
    
    private func handlePostLogin(accountInfo: DSMAccountInfo?, error: Error?) {
        if let error = error {
            print("Error logging in")
        } else {
            print("User authenticated!")
        }
    }
}
