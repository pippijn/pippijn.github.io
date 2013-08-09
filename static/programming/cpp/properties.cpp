#define offsetof __builtin_offsetof
typedef decltype (sizeof 0) size_t;

template<typename T> T &make_reference_to ();

template<
  typename Class,
  typename T,
  T const &(Class::*Get) () const,
  void (Class::*Set) (T const &),
  size_t Offset ()
>
struct prop
{
  Class       &self ()       { return *reinterpret_cast<Class       *> (reinterpret_cast<char       *> (this) - Offset ()); }
  Class const &self () const { return *reinterpret_cast<Class const *> (reinterpret_cast<char const *> (this) - Offset ()); }

  prop &operator = (T const &value)
  {
    set (value);
    return *this;
  }

  template<
    typename Class2,
    typename T2,
    T const &(Class::*Get2) () const,
    void (Class::*Set2) (T const &),
    size_t Offset2 ()
  >
  prop &operator = (prop<Class2, T2, Get2, Set2, Offset2> const &rhs)
  {
    set (rhs.get ());
    return *this;
  }


#define BINOP(OP)                                       \
  template<typename Rhs>                                \
  auto operator OP (Rhs const &value)                   \
    -> decltype (make_reference_to<T> () OP value) const\
  { return get () OP value; }

#define BINOP_EQ(OP)                            \
  BINOP (OP)                                    \
  template<typename Rhs>                        \
  prop &operator OP##= (Rhs const &value)       \
  { set (get () OP value); return *this; }      \

#define UNOP(OP)                                \
  auto operator OP ()                           \
    -> decltype (OP make_reference_to<T> ())    \
  { return OP get (); }

  BINOP_EQ (*)
  BINOP_EQ (/)
  BINOP_EQ (%)
  BINOP_EQ (+)
  BINOP_EQ (-)
  BINOP_EQ (&)
  BINOP_EQ (|)
  BINOP_EQ (^)
  BINOP_EQ (<<)
  BINOP_EQ (>>)

  BINOP (&&)
  BINOP (||)
  BINOP (==)
  BINOP (!=)

  UNOP (!)
  UNOP (~)

  operator T const & () const { return get (); }

  T const &get () const     { return (self ().*Get) (     ); }
  void set (T const &value) { return (self ().*Set) (value); }

};


struct point
{
  int _x;
  int _y;

  int const &get_x () const { return _x; }
  void set_x (int const &value) { _x = value; }
  static size_t offset_x () { return offsetof (point, x); }
  prop<point, int, &point::get_x, &point::set_x, offset_x> x;

  int const &get_y () const { return _y; }
  void set_y (int const &value) { _y = value; }
  static size_t offset_y () { return offsetof (point, y); }
  prop<point, int, &point::get_y, &point::set_y, offset_y> y;
};

int
main ()
{
  point p = { 1, 2 };
  p.x = 3;
  p.y = p.x;
  p.y += p.x;
  return p.y + p.x;
}
