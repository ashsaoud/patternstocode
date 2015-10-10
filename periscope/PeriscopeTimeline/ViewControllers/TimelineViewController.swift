//
//  TimelineViewController.swift
//  PeriscopeTimeline
//
//  Created by Christopher Pilcher on 9/10/15.
//  Copyright © 2015 Christopher Pilcher. All rights reserved.
//

import UIKit

class TimelineViewController: UITableViewController {

  private var timelineEvents = [TimelineEvent]()

  override func viewDidLoad() {
    super.viewDidLoad()

    timelineEvents.append(TimelineEvent(timelineImageName: "Ryot Background", title: "Tour of the RYOT office!", location: "Los Angeles", username: "Ryot", avatarImageName: "Ryot Avatar", liveCount: "4"))
    timelineEvents.append(TimelineEvent(timelineImageName: "Lahaddai Background", title: "Jagger time!", location: "Guadalajara", username: "lahaddai", avatarImageName: "Lahaddai Avatar", liveCount: "6"))
    timelineEvents.append(TimelineEvent(timelineImageName: "Waihekean Background", title: "Bush walk!", location: "Waiheke", username: "Waihekean", avatarImageName: "Waihekean Avatar", liveCount: "16"))
  }

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return timelineEvents.count
  }

  override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return 205
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TimelineTableViewCell
    let timelineEvent = timelineEvents[indexPath.row]
    cell.configure(timelineEvent)
    return cell
  }
}
