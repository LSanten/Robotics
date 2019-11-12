import random

class randomSensorData:
    def __init__(self, sensorCount, minValue, maxValue):
        self.sensorCount = sensorCount
        self.minValue = minValue
        self.maxValue = maxValue

    def createData(self):
        randomList = []
        for i in range(self.sensorCount):
            randomList.append(random.randint(self.minValue,self.maxValue))

        return randomList


if __name__ == '__main__':
    data = randomSensorData(4,0,1000)
    print(data.createData())
    # Initialize random Sensor data class
    # Call run method of above class
