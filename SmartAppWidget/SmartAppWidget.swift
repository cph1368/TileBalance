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

    var body: some View {
        Text(entry.date, style: .time)
    }
}

@main
struct SmartAppWidget: Widget {
    let kind: String = "SmartAppWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            SmartAppWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct SmartAppWidget_Previews: PreviewProvider {
    static var previews: some View {
        SmartAppWidgetEntryView(entry: SimpleEntry(date: Date(), widgetcontents: "Widget here"))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
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
