.class public final Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;
.super Ljava/lang/Object;
.source "BookEntityShovelerAdapter.kt"

# interfaces
.implements Lcom/amazon/kcp/home/util/ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $startTime:J

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    iput-wide p2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloadRequestComplete(Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    iget-object p1, p1, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->access$getSdk$p(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->$startTime:J

    sub-long/2addr v0, v2

    const-string v2, "com.amazon.kcp.home.widget.BookEntityShovelerAdapter"

    const-string v3, "BookEntityCoverLatency"

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    iget-object v0, p1, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    iget-object v1, p1, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$filename:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$key:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->access$readAndCacheBitmapFromFile(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->access$getThreadPoolManager$p(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;

    invoke-direct {v1, p1, p0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;-><init>(Landroid/graphics/Bitmap;Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
