.class Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;
.super Ljava/lang/Object;
.source "SingleReplicaCanvas.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

.field final synthetic val$imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field final synthetic val$wantedHeight:I

.field final synthetic val$wantedWidth:I


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider;II)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->val$imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iput p3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->val$wantedWidth:I

    iput p4, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->val$wantedHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 7

    .line 88
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {p1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->val$imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v0}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {p1, v1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$002(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 94
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {p1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->val$wantedWidth:I

    iget v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->val$wantedHeight:I

    invoke-virtual {p1, v1, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->forceInitialSize(II)V

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {p1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p1, v1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {p1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$100(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v3}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v4}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v5, v5, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$202(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 101
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v3}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v4}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v6}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {v2, v5, v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$302(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 102
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->val$imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v1, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {p1, v0}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$002(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 102
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 107
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object p1, p1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter p1

    .line 108
    :try_start_2
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p2, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    :goto_2
    invoke-static {v1, v0}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$402(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 109
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->access$502(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Z)Z

    .line 112
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;->this$0:Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object p2, p2, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method
