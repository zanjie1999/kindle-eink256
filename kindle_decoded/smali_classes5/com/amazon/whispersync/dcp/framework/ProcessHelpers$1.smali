.class final Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$1;
.super Ljava/lang/Thread;
.source "ProcessHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->waitForProcessComplete(Ljava/lang/Process;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$1;->val$process:Ljava/lang/Process;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
