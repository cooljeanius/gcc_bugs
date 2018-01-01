struct frame_info;

void
show_stack_frame(struct frame_info *fi)
{
  (void)fi;
  return;
}

void __attribute__((const))
show_stack_frame_2(struct frame_info *fi)
{
  (void)fi;
  return;
}
