#pragma once

#include <cstdint>
#include <cstring>
#include <array>
#include <algorithm>
#include <tuple>

#include "utils.hpp"

#define CRTP_MAXSIZE 31

class Connection;
class CrazyradioThread;

class Packet
{
// private:
  // constexpr size_t CRTP_MAXSIZE() { return 31; }
  friend class Connection;
  friend class CrazyradioThread;

public:
  Packet() 
    : size_(0)
    , seq_(0)
  {
    data_[0] = 0;
  }

  Packet(const uint8_t* data, size_t size)
  {
    std::memcpy(data_.data(), data, size);
    size_ = size;
  }

  bool valid() const
  {
    return size_ >= 1;
  }

  operator bool() const
  {
    return valid();
  }

  uint8_t channel() const
  {
    return getBitBieldValue<uint8_t, 0, 2>(data_[0]);
  }

  void setChannel(uint8_t channel)
  {
    setBitBieldValue<uint8_t, 0, 2>(data_[0], channel);
  }

  uint8_t port() const
  {
    return getBitBieldValue<uint8_t, 4, 4>(data_[0]);
  }

  void setPort(uint8_t port)
  {
    setBitBieldValue<uint8_t, 4, 4>(data_[0], port);
  }

  size_t payloadSize() const
  {
    return size_ == 0 ? 0 : size_ - 1;
  }

  void setPayloadSize(size_t size)
  {
    setSize(size + 1);
  }

  size_t size() const
  {
    return size_;
  }

  void setSize(size_t size)
  {
    size_ = std::min<size_t>(CRTP_MAXSIZE, size);
  }

  uint8_t* payload()
  {
    return &data_[1];
  }

  const uint8_t *payload() const
  {
    return &data_[1];
  }

  const uint8_t* raw() const
  {
    return &data_[0];
  }

  uint8_t *raw()
  {
    return &data_[0];
  }

  friend std::ostream& operator<<(std::ostream& out, const Packet& p)
  {
    out << "Packet(";
    out << "channel=" << (int)p.channel();
    out << ",port=" << (int)p.port();
    out << ",data=";
    for (size_t i = 1; i < p.size_; ++i) {
      out << (int)p.data_[i] << " ";
    }
    out << ",seq=" << p.seq_;
    out << ")";

    return out;
  }

  friend bool operator<(const Packet &l, const Packet &r)
  {
    return std::forward_as_tuple(l.port(), l.seq_) < std::forward_as_tuple(r.port(), r.seq_);
  }

private:
  uint8_t safelink() const
  {
    return getBitBieldValue<uint8_t, 2, 2>(data_[0]);
  }

  void setSafelink(uint8_t safelink)
  {
    setBitBieldValue<uint8_t, 2, 2>(data_[0], safelink);
  }

private:
  // use a fixed-size array to avoid dynamic allocation
  std::array<uint8_t, CRTP_MAXSIZE> data_;

  // actual size of data
  size_t size_;

  // sequence number for strict weak ordering
  mutable size_t seq_;
};
