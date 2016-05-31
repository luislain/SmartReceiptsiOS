//
//  TripsFetchedModelAdapter.swift
//  SmartReceipts
//
//  Created by Jaanus Siim on 31/05/16.
//  Copyright © 2016 Will Baumann. All rights reserved.
//

import Foundation

class TripsFetchedModelAdapter: FetchedModelAdapter {
    func refreshPriceForTrip(trip: WBTrip, inDatabase database: FMDatabase) {
        Log.debug("Refresh price on \(trip.name)")
        timeMeasured("Price update") {
            let receipts = database.fetchAllReceiptsForTrip(trip)
            let distances: [Distance]
            if WBPreferences.isTheDistancePriceBeIncludedInReports() {
                distances = database.fetchAllDistancesForTrip(trip)
            } else {
                distances = []
            }
        }
    }
}