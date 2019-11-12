#!/usr/bin/env python
# license removed for brevity
import rospy
from bucket.msg import Nums
from randomData import randomSensorData


class fakeData:
    def __init__(self):
        rospy.init_node('pub_fake_data', anonymous=False)
        self.fake_pts = rospy.Publisher('fake_pts', Nums, queue_size=10)
        self.rate = rospy.Rate(1)
        self.rnd_data = randomSensorData(4,0,1000)

    def publish(self):
        randomDataList = self.rnd_data.createData() # get random sensor data

        msg = Nums() # create new msg
        msg.num1 = randomDataList[0] # populate new msg with data
        msg.num2 = randomDataList[1]
        msg.num3 = randomDataList[2]
        msg.num4 = randomDataList[3]

        rospy.loginfo(msg)
        self.fake_pts.publish(msg) # publish msg


    def run(self):
        while not rospy.is_shutdown():
            self.publish()
            self.rate.sleep()

if __name__ == '__main__':
    try:
        fakeData = fakeData()
        fakeData.run()
    except rospy.ROSInterruptException:
        pass
