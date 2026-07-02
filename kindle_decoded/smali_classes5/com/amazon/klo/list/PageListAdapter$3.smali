.class Lcom/amazon/klo/list/PageListAdapter$3;
.super Lcom/amazon/klo/list/PageListAdapter$Retryable;
.source "PageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/list/PageListAdapter;->generateThumbnailsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/list/PageListAdapter;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$thumbnailHeight:I

.field final synthetic val$thumbnailPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field final synthetic val$thumbnailWidth:I


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/PageListAdapter;IJLjava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/os/Handler;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter$3;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    iput-object p6, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iput p7, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailHeight:I

    iput p8, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailWidth:I

    iput-object p9, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$handler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p5}, Lcom/amazon/klo/list/PageListAdapter$Retryable;-><init>(Lcom/amazon/klo/list/PageListAdapter;IJLjava/util/concurrent/ScheduledThreadPoolExecutor;)V

    return-void
.end method


# virtual methods
.method public attempt()V
    .locals 6

    .line 322
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$3;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    invoke-static {v0}, Lcom/amazon/klo/list/PageListAdapter;->access$100(Lcom/amazon/klo/list/PageListAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$3;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    invoke-static {v0}, Lcom/amazon/klo/list/PageListAdapter;->access$200(Lcom/amazon/klo/list/PageListAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 326
    :try_start_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget v3, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailHeight:I

    iget v4, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailWidth:I

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/krx/content/IBookContent;->getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 330
    iget-object v4, p0, Lcom/amazon/klo/list/PageListAdapter$3;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    invoke-static {v4}, Lcom/amazon/klo/list/PageListAdapter;->access$500(Lcom/amazon/klo/list/PageListAdapter;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {}, Lcom/amazon/klo/list/PageListAdapter;->access$400()Ljava/lang/String;

    const-string v1, "Generated reflowable thumbnail for book position: %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/amazon/klo/list/PageListAdapter$3$1;

    invoke-direct {v2, p0}, Lcom/amazon/klo/list/PageListAdapter$3$1;-><init>(Lcom/amazon/klo/list/PageListAdapter$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/amazon/klo/list/PageListAdapter$3;->this$0:Lcom/amazon/klo/list/PageListAdapter;

    invoke-static {v1}, Lcom/amazon/klo/list/PageListAdapter;->access$500(Lcom/amazon/klo/list/PageListAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-static {}, Lcom/amazon/klo/list/PageListAdapter;->access$400()Ljava/lang/String;

    const-string v1, "Unable to generate reflowable thumbnail for book position: %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/klo/list/PageListAdapter$3;->val$thumbnailPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/amazon/klo/list/PageListAdapter$Retryable;->retry()V

    .line 349
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
