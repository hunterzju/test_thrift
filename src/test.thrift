/**
 * test thrift project
 * solve Josephu probelm 
**/

/**
 * The first thing to know about are types. The available types in Thrift are:
 *
 *  bool        Boolean, one byte
 *  i8 (byte)   Signed 8-bit integer
 *  i16         Signed 16-bit integer
 *  i32         Signed 32-bit integer
 *  i64         Signed 64-bit integer
 *  double      64-bit floating point value
 *  string      String
 *  binary      Blob (byte array)
 *  map<t1,t2>  Map from one type to another
 *  list<t1>    Ordered list of one type
 *  set<t1>     Set of unique elements of one type
 *
 * Did you also notice that Thrift supports C style comments?
 */

namespace cpp tutorial
namespace d tutorial
namespace dart tutorial
namespace java tutorial
namespace php tutorial
namespace perl tutorial
namespace haxe tutorial
namespace netcore tutorial

typedef list<i32> int_list

/**
 * work parameter
**/
struct Work {
  1: i32 n,
  2: i32 k,
  3: i32 m,
  4: optional string comment,
}

exception InvalidOperation {
  1: i32 para_num,
  2: string why
}

/**
 * Ahh, now onto the cool part, defining a service. Services just need a name
 * and can optionally inherit from another service using the extends keyword.
 */
service caculateJosephu {

   i32 Josephu(1:i32 logid, 2:Work w) throws (1:InvalidOperation errinfo),

   /**
    * This method has a oneway modifier. That means the client only makes
    * a request and does not listen for any response at all. Oneway methods
    * must be void.
    */
   //oneway void zip()

}
