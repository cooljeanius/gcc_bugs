#include <initializer_list>

enum class E { A, B };

constexpr E no_warn2[] = { E::A, E::B };

constexpr auto warn = { E::A, E::B };

constexpr auto no_warn = { E::A, E::B };  // No warning second time around
