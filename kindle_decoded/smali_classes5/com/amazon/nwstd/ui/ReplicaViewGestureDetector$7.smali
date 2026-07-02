.class Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$7;
.super Ljava/lang/Object;
.source "ReplicaViewGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->hideCurl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$7;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1024
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$7;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$100(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$7;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$200(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$7;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-static {v1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$500(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)Lcom/amazon/kindle/pagecurl/CurlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/CurlView;->hideLeftRightPage()V

    .line 1029
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
