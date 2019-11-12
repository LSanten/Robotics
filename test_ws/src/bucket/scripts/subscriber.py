#!/usr/bin/env python
import rospy
from bucket.msg import Nums
from std_msgs.msg import String

class soundSubscriber:
    def __init__(self):
        rospy.init_node('soundListener', anonymous=True)

    def callback(self, data):
        rospy.loginfo(rospy.get_caller_id() + "-Received %s,%s,%s,%s", data.num1, data.num2, data.num3, data.num4)
        # do more in here with data if necessary

    def run(self):
        rospy.Subscriber("bucketData", Nums, self.callback)
        rospy.spin()

if __name__ == '__main__':
    try:
        soundSubscriber = soundSubscriber()
        soundSubscriber.run()
    except rospy.ROSInterruptException:
        pass
