//
//  StatusWidget.swift
//  StatusWidget
//
//  Created by Corry Handayani on 7/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct StatusWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        ZStack{
            VStack {
                
                VStack(alignment: .leading,spacing: 0){
                    Text("COLLEAGUE STATUS")
                        .font(.system(size: 10))
                    

                 Spacer()
                    HStack {
                        Image("Avatar")
                        Text("John Cuilui")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .padding(.top,12)
                    }
           
                       
                    Image("Avatar-business-trip")
                        .padding(.top,6)
                  
                    Spacer()
                  
                }
                .padding(.top,16)
                .frame(width: 145, height: 145, alignment: .leading)
            
             }
            .foregroundColor(Color(#colorLiteral(red: 0.09411764706, green: 0.1058823529, blue: 0.1450980392, alpha: 1)))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            // need to occupy the whole layout
            .padding()
            .cornerRadius(30)
            
            
            
        }
        .background(Color.white)
    }
}

@main
struct StatusWidget: Widget {
    let kind: String = "StatusWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            StatusWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Smart App Widget")
        .description("This is an example widget.")
    }
}

struct StatusWidget_Previews: PreviewProvider {
    static var previews: some View {
        StatusWidgetEntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
