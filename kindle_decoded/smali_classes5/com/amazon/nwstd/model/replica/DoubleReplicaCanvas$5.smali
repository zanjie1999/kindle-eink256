.class Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;
.super Ljava/lang/Object;
.source "DoubleReplicaCanvas.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

.field final synthetic val$obs:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

.field final synthetic val$wantedHeight:I

.field final synthetic val$wantedQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

.field final synthetic val$wantedWidth:I


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;IILcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$wantedQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput p3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$wantedWidth:I

    iput p4, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$wantedHeight:I

    iput-object p5, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$obs:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$wantedQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Big:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$wantedQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq v1, v2, :cond_1

    .line 405
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget v2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$wantedWidth:I

    iget v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$wantedHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->forceInitialSize(II)V

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {v3}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v1

    new-instance v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    invoke-direct {v3}, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;-><init>()V

    aput-object v3, v1, v2

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v3, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object v3, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 419
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->this$0:Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v2, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput-object v2, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 420
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;->val$obs:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    invoke-interface {v0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;->onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V

    return-void

    :catchall_0
    move-exception p1

    .line 420
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
