#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from bucket.msg import Nums
from randomData import randomSensorData

def publish_data(self):
    # get random sensor data
    # create new msg
    # populate new msg with data
    # publish msg
    pass

def talker():
    pub = rospy.Publisher('bucketData', Nums, queue_size=10) #creates topic
    rospy.init_node('talker', anonymous=False) #creates node
    rate = rospy.Rate(10) # in hz

    data = randomSensorData(4,0,1000) #instanciate random data object
    randomDataList = data.createData()

    msg = Nums()
    msg.num1 = randomDataList[0]
    msg.num2 = randomDataList[1]
    msg.num3 = randomDataList[2]
    msg.num4 = randomDataList[3]

    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
        #rospy.loginfo(hello_str) #prints
        #pub.publish(hello_str)
        self.publish_data()
        rate.sleep()

def run(self):
    # rospy not shutdown loop
        # Create new data
        # Load data into Nums msg
        # Publish msg
        # rospy sleep

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
