.class Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$1;
.super Ljava/lang/Object;
.source "BackgroundTaskQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue$1;->this$0:Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/BackgroundTaskQueue;->onAllTasksCompleted()V

    return-void
.end method
