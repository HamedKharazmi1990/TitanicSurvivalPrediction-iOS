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
                    SliderSectionView(
                        value: $tm.age,
                        sectionTitle: "Age",
                        prompt: "Age: \(tm.age.formatted())",
                        min: 0,
                        max: 120,
                        step: 0.5
                    )
                    
                    // Siblings and spouses
                    SliderSectionView(
                        value: $tm.siblingsSpouses,
                        sectionTitle: "Siblings and Spouses",
                        prompt: "Number of siblings/spouses: \(tm.siblingsSpouses.formatted())",
                        min: 0,
                        max: 10,
                        step: 1
                    )
                    
                    // Parents and children
                    SliderSectionView(
                        value: $tm.parentsChildren,
                        sectionTitle: "Parents and Children",
                        prompt: "Number of parents and children: \(tm.parentsChildren.formatted())",
                        min: 0,
                        max: 20,
                        step: 1
                    )
                    
                    // Ticket price? (in 1910 pounts)
                    SliderSectionView(
                        value: $tm.fare,
                        sectionTitle: "Ticket price? (in 1910 pounts)",
                        prompt: "Ticket price £\(tm.fare.formatted())",
                        min: 0,
                        max: 600,
                        step: 0.1
                    )
                    
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
