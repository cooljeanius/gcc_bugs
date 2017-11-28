static int i;
static int* temp = &i;
static constexpr int *&&r = static_cast<int*&&>(temp) + 1;
