#include <linux/module.h>
#include <linux/init.h>

MODULE_LICENSE("GPL");

static int hello_init(void)
{
	printk(KERN_ALERT "Hello World\n");
	return 0;
}

static void hello_exit(void)
{
	printk(KERN_ALERT "Goodbye\n");
}

module_init(hello_init);
module_exit(hello_exit);
