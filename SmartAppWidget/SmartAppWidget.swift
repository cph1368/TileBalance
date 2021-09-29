//
//  SmartAppWidget.swift
//  SmartAppWidget
//
//  Created by Corry Handayani on 6/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), widgetcontents: "...")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), widgetcontents: "...")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, widgetcontents: "...")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let widgetcontents : String
    //#1
}

struct SmartAppWidgetEntryView : View {
    var entry: Provider.Entry
//add configuration
   // @Environment(\.widgetFamily) var widgetFamily
    
    var body: some View {
        
        ZStack{
            VStack {
                
                VStack(alignment: .leading,spacing: 0){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))

                 
                    Text("Business Trip")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        .padding(.top,12)
           
                       
                    Image("Avatar-business-trip")
                        .padding(.top,6)
                  
                   
                  
                }
                .padding(.top,16)
                .frame(width: 145, height: 145, alignment: .leading)
            
             }
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.7069736123, blue: 0.6013585925, alpha: 1)))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            // need to occupy the whole layout
            .padding()
            .cornerRadius(30)
            
            
            
        }
        .background(Color(#colorLiteral(red: 0.9058823529, green: 0.968627451, blue: 0.9568627451, alpha: 1)))
    }
}

@main
struct SmartAppWidget: Widget {
    let kind: String = "SmartAppWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            SmartAppWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("SmartAppWidget")
        .description("Choose Your Status Here")
    }
}

struct SmartAppWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SmartAppWidgetEntryView(entry: SimpleEntry(date: Date(), widgetcontents: "Widget here"))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            SmartAppWidgetEntryView(entry: SimpleEntry(date: Date(), widgetcontents: "Widget here"))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            SmartAppWidgetEntryView(entry: SimpleEntry(date: Date(), widgetcontents: "Widget here"))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}
class MyDataProvider{
    static func getwidgetcontent() -> String{
        
        let strings = [
            "1 + 1 = 2",
            "2 + 1 = 3",
        ]
        
        
        return strings.randomElement()!
    }
}
