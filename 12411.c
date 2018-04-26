
int gen_label_rtx(void);
int get_insns(void);
int emit_label_before(int, int);

int foo(void)
{
  int label;
  label = emit_label_before(gen_label_rtx(), get_insns());
  return label;
}
