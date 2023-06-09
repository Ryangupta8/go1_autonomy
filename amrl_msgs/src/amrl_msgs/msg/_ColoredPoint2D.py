# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from amrl_msgs/ColoredPoint2D.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import amrl_msgs.msg

class ColoredPoint2D(genpy.Message):
  _md5sum = "ddbdd5a0fbcde494542b00e8d4047aee"
  _type = "amrl_msgs/ColoredPoint2D"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Point2D point
uint32 color
================================================================================
MSG: amrl_msgs/Point2D
float32 x
float32 y
"""
  __slots__ = ['point','color']
  _slot_types = ['amrl_msgs/Point2D','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       point,color

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ColoredPoint2D, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.point is None:
        self.point = amrl_msgs.msg.Point2D()
      if self.color is None:
        self.color = 0
    else:
      self.point = amrl_msgs.msg.Point2D()
      self.color = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2fI().pack(_x.point.x, _x.point.y, _x.color))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.point is None:
        self.point = amrl_msgs.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.point.x, _x.point.y, _x.color,) = _get_struct_2fI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2fI().pack(_x.point.x, _x.point.y, _x.color))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.point is None:
        self.point = amrl_msgs.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.point.x, _x.point.y, _x.color,) = _get_struct_2fI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2fI = None
def _get_struct_2fI():
    global _struct_2fI
    if _struct_2fI is None:
        _struct_2fI = struct.Struct("<2fI")
    return _struct_2fI
