//
//  ScoreboardView.swift
//  Cricket
//
//  Created by kartik khorwal on 18/02/24.
//

import SwiftUI

struct ScoreboardView: View {

    @Environment(\.openWindow) private var openWindow

    enum TeamsOptions: String, CaseIterable, Identifiable {
        case eng, ind
        var id: Self { self }
    }

    @State private var selection: TeamsOptions = .ind

    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 32){
            
            Text("Scorecard")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            ScrollView{
                if selection == .ind {
                    IndiaInnings()
                }else {
                    EnglandInnings()
                }
            }
            
        }.padding(.horizontal, 20)
            .padding(.vertical, 20)
        .ornament(
            visibility: .visible,
            attachmentAnchor: .scene(.bottom),
            contentAlignment: .top
        ) {
            HStack() {
                Picker("Teams Options", selection: $selection){
                    Text(" Ind             ")
                        .tag(TeamsOptions.ind)
              
                    Text("Eng")
                        .tag(TeamsOptions.eng)
                    
                }.pickerStyle(.segmented)
            }
            .padding(8)
            .glassBackgroundEffect()
        }
     
        Spacer()
    }
}

#Preview {
    ScoreboardView()
}

@ViewBuilder
func IndiaInnings()->some View{
    VStack{
        BattingHeader()
        
        Divider()
        
        VStack(spacing: 12){
            BattingRow(name: "Rohit Sharma", status: "c Ben Stokes  b Mark Wood", runs: 131, balls: 196, fours: 14, sixes: 3, strikerate: "66.84")
            
            Divider()
            
            BattingRow(name: "Virat Kohli", status: "not out", runs: 89, balls: 120, fours: 10, sixes: 1, strikerate: "74.17" ,notOut: true)
            
            Divider()
            
            BattingRow(name: "KL Rahul", status: "run out (Joe Root)", runs: 45, balls: 68, fours: 5, sixes: 0, strikerate: "66.18")
            
            Divider()
            
            BattingRow(name: "Ajinkya Rahane", status: "c Jos Buttler b Jofra Archer", runs: 76, balls: 105, fours: 8, sixes: 2, strikerate: "72.38")
            
            Divider()
            
            BattingRow(name: "Rishabh Pant", status: "lbw b Mitchell Starc", runs: 102, balls: 145, fours: 12, sixes: 1, strikerate: "70.34")
            
            Divider()
            
            BattingRow(name: "Ravindra Jadeja", status: "not out", runs: 55, balls: 78, fours: 6, sixes: 1, strikerate: "70.51", notOut: true )
         
            Divider()
            
            BattingRow(name: "Hardik Pandya", status: "c KL Rahul b Jasprit Bumrah", runs: 120, balls: 98, fours: 14, sixes: 4, strikerate: "122.45"  )
            
            Divider()
            
            BattingRow(name: "Shubman Gill", status: "c Jonny Bairstow b Chris Woakes", runs: 33, balls: 49, fours: 3, sixes: 0, strikerate: "67.35" )
            
            Divider()
            
            BattingRow(name: "Mayank Agarwal", status: "lbw b Trent Boult", runs: 28, balls: 36, fours: 4, sixes: 0, strikerate: "77.78"  )
            
            Divider()
            
            BattingRow(name: "Shikhar Dhawan", status: "c Faf du Plessis b Kagiso Rabada", runs: 69, balls: 85, fours: 9, sixes: 2, strikerate: "81.18")
        }
    }
    
}

@ViewBuilder
func EnglandInnings()->some View{
    VStack{
        BattingHeader()
        
        Divider()
        
        VStack(spacing: 12) {
            BattingRow(name: "Joe Root", status: "c KL Rahul b Jasprit Bumrah", runs: 134, balls: 180, fours: 16, sixes: 2, strikerate: "74.44")
            
            Divider()
            
            BattingRow(name: "Jonny Bairstow", status: "lbw b Mohammed Shami", runs: 76, balls: 105, fours: 8, sixes: 1, strikerate: "72.38")
            
            Divider()
            
            BattingRow(name: "Ben Stokes", status: "c Rishabh Pant b Ravindra Jadeja", runs: 92, balls: 120, fours: 11, sixes: 3, strikerate: "76.67")
            
            Divider()
            
            BattingRow(name: "Jos Buttler", status: "c Shubman Gill b Hardik Pandya", runs: 45, balls: 68, fours: 5, sixes: 0, strikerate: "66.18")
            
            Divider()
            
            BattingRow(name: "Chris Woakes", status: "c Mayank Agarwal b Jasprit Bumrah", runs: 68, balls: 85, fours: 9, sixes: 2, strikerate: "80.00")
            
            Divider()
            
            BattingRow(name: "Jofra Archer", status: "not out", runs: 34, balls: 49, fours: 3, sixes: 0, strikerate: "69.39", notOut: true)
            
            Divider()
            
            BattingRow(name: "Mark Wood", status: "c Virat Kohli b Mohammed Siraj", runs: 19, balls: 36, fours: 2, sixes: 0, strikerate: "52.78")
            
            Divider()
            
            BattingRow(name: "Stuart Broad", status: "c Shikhar Dhawan b Ravindra Jadeja", runs: 28, balls: 45, fours: 4, sixes: 0, strikerate: "62.22")
            
            Divider()
            
            BattingRow(name: "Jack Leach", status: "lbw b Ravi Ashwin", runs: 14, balls: 28, fours: 1, sixes: 0, strikerate: "50.00")
            
            Divider()
            
            BattingRow(name: "James Anderson", status: "c KL Rahul b Mohammed Shami", runs: 12, balls: 18, fours: 1, sixes: 0, strikerate: "66.67")
        }

    }
    
}

@ViewBuilder 
func BattingHeader()->some View{
    HStack{
        Text("Player")
            .font(.subheadline)
        
        Spacer()
        
        HStack(spacing:12){
            Text("R")
                .frame(width: 40)

            Text("B")
                .frame(width: 40)
            Text("4s")
                .frame(width: 40)
            Text("6s")
                .frame(width: 40)
            Text("S/R")
                .frame(width: 50)
        }
    }.fontWeight(.semibold)
        .opacity(0.6)
    
}

@ViewBuilder
func BattingRow(name:String, status:String, runs: Int16, balls: Int16, fours: Int16, sixes: Int16, strikerate: String, notOut: Bool? = false)->some View{
    
    HStack{
        VStack(alignment:.leading){
            Text(name)
                .font(.title3)
                .fontWeight(.semibold)
            Text(status)
                .font(.subheadline)
                .opacity(0.6)
       
        }
        Spacer()
        
        HStack(spacing:12){
            Text("\(runs)")
                .frame(width: 40)
            Text("\(balls)")
                .frame(width: 40)
            Text("\(fours)")
                .frame(width: 40)
            Text("\(sixes)")
                .frame(width: 40)
            Text(strikerate)
                .frame(width: 50)
                .lineLimit(1)
        }
    }.foregroundColor(notOut ?? false ? .white : .secondary)
}
