.class Lcom/amazon/ea/util/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/util/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/util/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/amazon/ea/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/ea/util/PriorityThreadFactory$1;->this$0:Lcom/amazon/ea/util/PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/ea/util/PriorityThreadFactory$1;->this$0:Lcom/amazon/ea/util/PriorityThreadFactory;

    invoke-static {v0}, Lcom/amazon/ea/util/PriorityThreadFactory;->access$000(Lcom/amazon/ea/util/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 41
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
