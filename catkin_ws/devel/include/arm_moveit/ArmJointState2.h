// Generated by gencpp from file arm_moveit/ArmJointState2.msg
// DO NOT EDIT!


#ifndef ARM_MOVEIT_MESSAGE_ARMJOINTSTATE2_H
#define ARM_MOVEIT_MESSAGE_ARMJOINTSTATE2_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_moveit
{
template <class ContainerAllocator>
struct ArmJointState2_
{
  typedef ArmJointState2_<ContainerAllocator> Type;

  ArmJointState2_()
    : position1(0)
    , position2(0)
    , position3(0)
    , position4(0)  {
    }
  ArmJointState2_(const ContainerAllocator& _alloc)
    : position1(0)
    , position2(0)
    , position3(0)
    , position4(0)  {
  (void)_alloc;
    }



   typedef int16_t _position1_type;
  _position1_type position1;

   typedef int16_t _position2_type;
  _position2_type position2;

   typedef int16_t _position3_type;
  _position3_type position3;

   typedef int16_t _position4_type;
  _position4_type position4;





  typedef boost::shared_ptr< ::arm_moveit::ArmJointState2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_moveit::ArmJointState2_<ContainerAllocator> const> ConstPtr;

}; // struct ArmJointState2_

typedef ::arm_moveit::ArmJointState2_<std::allocator<void> > ArmJointState2;

typedef boost::shared_ptr< ::arm_moveit::ArmJointState2 > ArmJointState2Ptr;
typedef boost::shared_ptr< ::arm_moveit::ArmJointState2 const> ArmJointState2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_moveit::ArmJointState2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_moveit::ArmJointState2_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace arm_moveit

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'arm_moveit': ['/home/wolf/Mechanical_Practice/catkin_ws/src/arm_moveit/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_moveit::ArmJointState2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_moveit::ArmJointState2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_moveit::ArmJointState2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b25fb6f563fe7748caa50319ae012a0f";
  }

  static const char* value(const ::arm_moveit::ArmJointState2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb25fb6f563fe7748ULL;
  static const uint64_t static_value2 = 0xcaa50319ae012a0fULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_moveit/ArmJointState2";
  }

  static const char* value(const ::arm_moveit::ArmJointState2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 position1\n\
int16 position2\n\
int16 position3\n\
int16 position4\n\
";
  }

  static const char* value(const ::arm_moveit::ArmJointState2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position1);
      stream.next(m.position2);
      stream.next(m.position3);
      stream.next(m.position4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmJointState2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_moveit::ArmJointState2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_moveit::ArmJointState2_<ContainerAllocator>& v)
  {
    s << indent << "position1: ";
    Printer<int16_t>::stream(s, indent + "  ", v.position1);
    s << indent << "position2: ";
    Printer<int16_t>::stream(s, indent + "  ", v.position2);
    s << indent << "position3: ";
    Printer<int16_t>::stream(s, indent + "  ", v.position3);
    s << indent << "position4: ";
    Printer<int16_t>::stream(s, indent + "  ", v.position4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_MOVEIT_MESSAGE_ARMJOINTSTATE2_H
