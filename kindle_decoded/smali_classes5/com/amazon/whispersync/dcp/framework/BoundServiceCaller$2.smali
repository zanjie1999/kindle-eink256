.class Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;
.super Ljava/lang/Object;
.source "BoundServiceCaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->call()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$200(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)[Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$100(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    monitor-exit v0

    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Application timed out trying to bind to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-static {v5}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$400(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->access$302(Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller$2;->this$0:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->serviceTimedOut()V

    return-void

    :catchall_0
    move-exception v1

    .line 116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
