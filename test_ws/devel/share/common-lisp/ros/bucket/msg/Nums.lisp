; Auto-generated. Do not edit!


(cl:in-package bucket-msg)


;//! \htmlinclude Nums.msg.html

(cl:defclass <Nums> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0)
   (num3
    :reader num3
    :initarg :num3
    :type cl:integer
    :initform 0)
   (num4
    :reader num4
    :initarg :num4
    :type cl:integer
    :initform 0))
)

(cl:defclass Nums (<Nums>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Nums>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Nums)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bucket-msg:<Nums> is deprecated: use bucket-msg:Nums instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <Nums>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bucket-msg:num1-val is deprecated.  Use bucket-msg:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <Nums>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bucket-msg:num2-val is deprecated.  Use bucket-msg:num2 instead.")
  (num2 m))

(cl:ensure-generic-function 'num3-val :lambda-list '(m))
(cl:defmethod num3-val ((m <Nums>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bucket-msg:num3-val is deprecated.  Use bucket-msg:num3 instead.")
  (num3 m))

(cl:ensure-generic-function 'num4-val :lambda-list '(m))
(cl:defmethod num4-val ((m <Nums>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bucket-msg:num4-val is deprecated.  Use bucket-msg:num4 instead.")
  (num4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Nums>) ostream)
  "Serializes a message object of type '<Nums>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num4)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Nums>) istream)
  "Deserializes a message object of type '<Nums>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num4)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Nums>)))
  "Returns string type for a message object of type '<Nums>"
  "bucket/Nums")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nums)))
  "Returns string type for a message object of type 'Nums"
  "bucket/Nums")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Nums>)))
  "Returns md5sum for a message object of type '<Nums>"
  "b6d78ecf7b511642686f88da1fa1bdaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Nums)))
  "Returns md5sum for a message object of type 'Nums"
  "b6d78ecf7b511642686f88da1fa1bdaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Nums>)))
  "Returns full string definition for message of type '<Nums>"
  (cl:format cl:nil "uint32 num1~%uint32 num2~%uint32 num3~%uint32 num4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Nums)))
  "Returns full string definition for message of type 'Nums"
  (cl:format cl:nil "uint32 num1~%uint32 num2~%uint32 num3~%uint32 num4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Nums>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Nums>))
  "Converts a ROS message object to a list"
  (cl:list 'Nums
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
    (cl:cons ':num3 (num3 msg))
    (cl:cons ':num4 (num4 msg))
))
