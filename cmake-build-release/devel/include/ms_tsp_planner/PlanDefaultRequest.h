// Generated by gencpp from file ms_tsp_planner/PlanDefaultRequest.msg
// DO NOT EDIT!


#ifndef MS_TSP_PLANNER_MESSAGE_PLANDEFAULTREQUEST_H
#define MS_TSP_PLANNER_MESSAGE_PLANDEFAULTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ms_tsp_planner
{
template <class ContainerAllocator>
struct PlanDefaultRequest_
{
  typedef PlanDefaultRequest_<ContainerAllocator> Type;

  PlanDefaultRequest_()
    {
    }
  PlanDefaultRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PlanDefaultRequest_

typedef ::ms_tsp_planner::PlanDefaultRequest_<std::allocator<void> > PlanDefaultRequest;

typedef boost::shared_ptr< ::ms_tsp_planner::PlanDefaultRequest > PlanDefaultRequestPtr;
typedef boost::shared_ptr< ::ms_tsp_planner::PlanDefaultRequest const> PlanDefaultRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace ms_tsp_planner

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ms_tsp_planner/PlanDefaultRequest";
  }

  static const char* value(const ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanDefaultRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ms_tsp_planner::PlanDefaultRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MS_TSP_PLANNER_MESSAGE_PLANDEFAULTREQUEST_H
