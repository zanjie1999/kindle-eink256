.class Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;
.super Ljava/lang/Object;
.source "DoubleReplicaCanvas.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget-object p1, p1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter p1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v0

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 90
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {p2}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->access$108(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)I

    .line 93
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget-object p2, p2, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
