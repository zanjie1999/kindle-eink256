.class Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;
.super Ljava/lang/Object;
.source "SingleReplicaCanvas.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

.field final synthetic val$obs:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

.field final synthetic val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

.field final synthetic val$wantedHeight:I

.field final synthetic val$wantedWidth:I


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;IILcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput p3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$wantedWidth:I

    iput p4, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$wantedHeight:I

    iput-object p5, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$obs:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$100(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$200(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$200(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$300(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$300(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 309
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v0, v1, :cond_3

    .line 310
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$100(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 311
    :try_start_1
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v2, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v5, v5, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$202(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 312
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v2, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v6, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {v2, v5, v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$302(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 313
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-static {v0, v1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$402(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 316
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v1, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v1, v0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v1

    .line 318
    :try_start_2
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 319
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$002(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 320
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 313
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v1, v0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v1

    .line 325
    :try_start_4
    iget-object v0, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq v0, v2, :cond_4

    .line 326
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$wantedWidth:I

    iget v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$wantedHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->forceInitialSize(II)V

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 329
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v2, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$002(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 330
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v2, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-static {v0, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$402(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 331
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;->val$obs:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    invoke-interface {v0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;->onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V

    return-void

    :catchall_2
    move-exception p1

    .line 331
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 308
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method
