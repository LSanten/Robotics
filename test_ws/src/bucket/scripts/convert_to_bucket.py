#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String, Header
from bucket.msg import Nums
from randomData import randomSensorData
from geometry_msgs.msg import Point
from sensor_msgs.msg import PointCloud

class sensors:
    def __init__(self):
        rospy.init_node('convert_to_bucket', anonymous=False) #initiliaze _node
        self.pub = rospy.Publisher('bucketData', Nums, queue_size=10) #creates topic
        self.sonar_pts = rospy.Publisher('sonarPoints', PointCloud, queue_size=10)
        self.rate = rospy.Rate(10) # in hz
        self.data = randomSensorData(4,0,1000) #instanciate random data object
        rospy.Subscriber("fake_pts", Nums, self.callback)
        self.sensor1_x_from_origin = 0 #distance from origin in mm
        self.sensor1_y_from_origin = -300
        self.sensor1_z_from_origin = 400

        self.sensor2_x_from_origin = 0
        self.sensor2_y_from_origin = -100
        self.sensor2_z_from_origin = 400

        self.sensor3_x_from_origin = 0
        self.sensor3_y_from_origin = 100
        self.sensor3_z_from_origin = 400

        self.sensor4_x_from_origin = 0
        self.sensor4_y_from_origin = 300
        self.sensor4_z_from_origin = 400

        rospy.spin()

    def callback(self, data):
        #rospy.loginfo(rospy.get_caller_id() + "-Received %s,%s,%s,%s", data.num1, data.num2, data.num3, data.num4)
        #convert data uints into 3D points
        points = PointCloud()
        points.header = Header()
        points.header.frame_id = 'map'
        point1 = Point()
        point2 = Point()
        point3 = Point()
        point4 = Point()

        point1.x = self.sensor1_x_from_origin
        point1.y = self.sensor1_y_from_origin
        point1.z = (self.sensor1_z_from_origin - data.num1)

        point2.x = self.sensor2_x_from_origin
        point2.y = self.sensor2_y_from_origin
        point2.z = self.sensor2_z_from_origin - data.num2

        point3.x = self.sensor3_x_from_origin
        point3.y = self.sensor3_y_from_origin
        point3.z = self.sensor3_z_from_origin - data.num3

        point4.x = self.sensor4_x_from_origin
        point4.y = self.sensor4_y_from_origin
        point4.z = self.sensor4_z_from_origin - data.num4

        point_list = [point1, point2, point3, point4]
        points.points = point_list

        self.sonar_pts.publish(points)

if __name__ == '__main__':
    try:
        sensors = sensors()
    except rospy.ROSInterruptException:
        pass
