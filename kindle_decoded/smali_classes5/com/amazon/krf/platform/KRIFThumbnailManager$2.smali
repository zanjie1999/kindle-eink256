.class Lcom/amazon/krf/platform/KRIFThumbnailManager$2;
.super Ljava/lang/Object;
.source "KRIFThumbnailManager.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFPageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFThumbnailManager;-><init>(Lcom/amazon/krf/platform/KRFView;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocumentUpdated()V
    .locals 2

    .line 222
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$2;

    invoke-direct {v1, p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$2;-><init>(Lcom/amazon/krf/platform/KRIFThumbnailManager$2;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSectionUpdated(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 4

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$000(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$000(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$100(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    iget-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$1;

    invoke-direct {v1, p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$1;-><init>(Lcom/amazon/krf/platform/KRIFThumbnailManager$2;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$002(Lcom/amazon/krf/platform/KRIFThumbnailManager;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$000(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :catchall_0
    move-exception p1

    .line 211
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
