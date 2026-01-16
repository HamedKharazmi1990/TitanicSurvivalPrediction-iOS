//
//  ContentView.swift
//  Titanic
//
//  Created by Hamed Kharazmi on 16.01.26.
//

import SwiftUI

struct MainView: View {
    @State private var tm: TitanicModel = .init(
        passengerClass: "Second Class",
        sex: "Male",
        age: 18,
        siblingsSpouses: 2,
        parentsChildren: 4,
        fare: 5,
        port: "Cherbourg"
    )
    
    @State private var survival: Bool? = nil
    @State private var showAlert = false
    @State private var survivalRate: Double = -1
    
    var body: some View {
        NavigationStack {
            ZStack {
                Form {
                    // Passenger Class
                    SegmentSectionView(
                        selected: $tm.passengerClass,
                        options: TitanicModel.passengerClasses,
                        sectionTitle: "Passenger Class",
                        prompt: "What passenger class are you?"
                    )
                    
                    // Gender/Sex
                    SegmentSectionView(
                        selected: $tm.sex,
                        options: TitanicModel.genders,
                        sectionTitle: "Gender",
                        prompt: "What is your gender?"
                    )
                    
                    // Age
                    Section("Age") { Text("TODO: Age") }
                    
                    // Siblings and spouses
                    Section("Siblings and spouses") { Text("TODO: Siblings and spouses") }
                    
                    // Parents and children
                    Section("Parents and children") { Text("TODO: Parents and children") }
                    
                    // Ticket price? (in 1910 pounts)
                    Section("Ticket price?") { Text("TODO: Ticket price?") }
                    
                    // Port
                    SegmentSectionView(
                        selected: $tm.port,
                        options: TitanicModel.ports,
                        sectionTitle: "Port",
                        prompt: "What port did you embark from?"
                    )
                }
                
                if showAlert {
                    Text("TODO: SHOW RESULT ABOUT SURVIVAL")
                }
            }
            .navigationTitle("Surviving the Titanic")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        // TODO: Implement - Determine Survival using Model
                    } label: {
                        Text("Compute")
                            .bold()
                            .foregroundStyle(Color.red)
                            .opacity(showAlert ? 0 : 1)
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
