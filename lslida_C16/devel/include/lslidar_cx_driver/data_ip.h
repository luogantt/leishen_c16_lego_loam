// Generated by gencpp from file lslidar_cx_driver/data_ip.msg
// DO NOT EDIT!


#ifndef LSLIDAR_CX_DRIVER_MESSAGE_DATA_IP_H
#define LSLIDAR_CX_DRIVER_MESSAGE_DATA_IP_H

#include <ros/service_traits.h>


#include <lslidar_cx_driver/data_ipRequest.h>
#include <lslidar_cx_driver/data_ipResponse.h>


namespace lslidar_cx_driver
{

struct data_ip
{

typedef data_ipRequest Request;
typedef data_ipResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct data_ip
} // namespace lslidar_cx_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lslidar_cx_driver::data_ip > {
  static const char* value()
  {
    return "677773e65c76c0258fca5e834bbd1dcd";
  }

  static const char* value(const ::lslidar_cx_driver::data_ip&) { return value(); }
};

template<>
struct DataType< ::lslidar_cx_driver::data_ip > {
  static const char* value()
  {
    return "lslidar_cx_driver/data_ip";
  }

  static const char* value(const ::lslidar_cx_driver::data_ip&) { return value(); }
};


// service_traits::MD5Sum< ::lslidar_cx_driver::data_ipRequest> should match
// service_traits::MD5Sum< ::lslidar_cx_driver::data_ip >
template<>
struct MD5Sum< ::lslidar_cx_driver::data_ipRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lslidar_cx_driver::data_ip >::value();
  }
  static const char* value(const ::lslidar_cx_driver::data_ipRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lslidar_cx_driver::data_ipRequest> should match
// service_traits::DataType< ::lslidar_cx_driver::data_ip >
template<>
struct DataType< ::lslidar_cx_driver::data_ipRequest>
{
  static const char* value()
  {
    return DataType< ::lslidar_cx_driver::data_ip >::value();
  }
  static const char* value(const ::lslidar_cx_driver::data_ipRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lslidar_cx_driver::data_ipResponse> should match
// service_traits::MD5Sum< ::lslidar_cx_driver::data_ip >
template<>
struct MD5Sum< ::lslidar_cx_driver::data_ipResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lslidar_cx_driver::data_ip >::value();
  }
  static const char* value(const ::lslidar_cx_driver::data_ipResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lslidar_cx_driver::data_ipResponse> should match
// service_traits::DataType< ::lslidar_cx_driver::data_ip >
template<>
struct DataType< ::lslidar_cx_driver::data_ipResponse>
{
  static const char* value()
  {
    return DataType< ::lslidar_cx_driver::data_ip >::value();
  }
  static const char* value(const ::lslidar_cx_driver::data_ipResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LSLIDAR_CX_DRIVER_MESSAGE_DATA_IP_H
