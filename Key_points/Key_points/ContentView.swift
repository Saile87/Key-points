//
//  ContentView.swift
//  Key_points
//
//  Created by Elias Breitenbach on 20.03.23.
//

import SwiftUI

struct ContentView: View {
    //    __________________________________________________________________________
//NOTIZ
//        @State private var selection = 0
//
//        var body: some View {
//            let binding = Binding(
//                get: { selection },
//                set: { selection = $0 }
//            )
//
//            return VStack {
//                Picker("Select a number", selection: binding) {
//                    ForEach(0..<3) {
//                        Text("Item \($0)")
//                    }
//                }
//                .pickerStyle(.segmented)
//            }
//        }
//    }
    //    __________________________________________________________________________
    //        let agents = ["Cyril", "Lana", "Pam", "Sterling"]
    //        NOTIZ: option 1
    //        VStack {
    //            ForEach(0..<agents.count) {
    //                Text(agents[$0])
    //            }
    //        }
    //       NOTIZ: option 2
    //        VStack {
    //            ForEach(agents, id: \.self) {
    //                Text($0)
    //            }
    //        }
//    __________________________________________________________________________
    @State var agreedToTerms = false
    @State var agreedToPrivacyPolicy = false
    @State var agreedToEmails = false
    
        var body: some View {
            let agreedToAll = Binding<Bool>(
                get: {
                    agreedToTerms && agreedToPrivacyPolicy && agreedToEmails
                },
                set: {
                    agreedToTerms = $0
                    agreedToPrivacyPolicy = $0
                    agreedToEmails = $0
                }
            )

            return VStack {
                Toggle("Agree to terms", isOn: $agreedToTerms)
                Toggle("Agree to privacy policy", isOn: $agreedToPrivacyPolicy)
                Toggle("Agree to receive shipping emails", isOn: $agreedToEmails)
                Toggle("Agree to all", isOn: agreedToAll)
            }
        }
    }
//    __________________________________________________________________________
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
