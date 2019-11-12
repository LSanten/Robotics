;; Auto-generated. Do not edit!


(when (boundp 'bucket::Nums)
  (if (not (find-package "BUCKET"))
    (make-package "BUCKET"))
  (shadow 'Nums (find-package "BUCKET")))
(unless (find-package "BUCKET::NUMS")
  (make-package "BUCKET::NUMS"))

(in-package "ROS")
;;//! \htmlinclude Nums.msg.html


(defclass bucket::Nums
  :super ros::object
  :slots (_num1 _num2 _num3 _num4 ))

(defmethod bucket::Nums
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    ((:num3 __num3) 0)
    ((:num4 __num4) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   (setq _num3 (round __num3))
   (setq _num4 (round __num4))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:num3
   (&optional __num3)
   (if __num3 (setq _num3 __num3)) _num3)
  (:num4
   (&optional __num4)
   (if __num4 (setq _num4 __num4)) _num4)
  (:serialization-length
   ()
   (+
    ;; uint32 _num1
    4
    ;; uint32 _num2
    4
    ;; uint32 _num3
    4
    ;; uint32 _num4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _num1
       (write-long _num1 s)
     ;; uint32 _num2
       (write-long _num2 s)
     ;; uint32 _num3
       (write-long _num3 s)
     ;; uint32 _num4
       (write-long _num4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num3
     (setq _num3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num4
     (setq _num4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bucket::Nums :md5sum-) "b6d78ecf7b511642686f88da1fa1bdaf")
(setf (get bucket::Nums :datatype-) "bucket/Nums")
(setf (get bucket::Nums :definition-)
      "uint32 num1
uint32 num2
uint32 num3
uint32 num4

")



(provide :bucket/Nums "b6d78ecf7b511642686f88da1fa1bdaf")


