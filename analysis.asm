        .file   "03test.c"
        .text
        .globl  main
        .type   main, @function
main:
.LFB0:
        .cfi_startproc
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        movl    $10, -12(%rbp)         //a = 10
        leaq    -12(%rbp), %rax        //p = &a
        movq    %rax, -8(%rbp)         //将这个地址放入到栈中
        movq    -8(%rbp), %rax         //从栈中取出地址放回寄存器
        movl    $4, (%rax)             //将 寄存器中地址所指向的内存上的值改为4  *p = 4
        movl    $0, %eax               //将0赋给寄存器eax，作为返回值
        popq    %rbp                   //弹出帧指针 
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE0:
        .size   main, .-main
        .ident  "GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
        .section        .note.GNU-stack,"",@progbits
~



int main()
{
        int *p;
        int a = 10;
        p = &a;
        *p = 4;
        return 0;
}

