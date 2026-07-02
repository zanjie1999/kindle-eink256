.class public Lcom/amazon/klo/list/PageListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;,
        Lcom/amazon/klo/list/PageListAdapter$Retryable;,
        Lcom/amazon/klo/list/PageListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/klo/list/PageListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.list.PageListAdapter"

.field private static final THUMBNAIL_EXECUTOR_CORE_POOL_SIZE:I = 0x0

.field private static final THUMBNAIL_RETRY_DELAY:J = 0x9c4L

.field private static final THUMBNAIL_RETRY_MAX_ATTEMPTS:I = 0xa


# instance fields
.field private backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

.field private volatile hasBeenDisposed:Z

.field private itemClickListener:Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

.field private final pageListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/PageListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final printReplicaThumbnailCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final reflowableThumbnailCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final thumbnailCacheLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/PageListItem;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter;->pageListItems:Ljava/util/List;

    .line 66
    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter;->buildBackgroundExecutor()Lcom/amazon/klo/PauseableThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter;->printReplicaThumbnailCache:Ljava/util/HashMap;

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter;->reflowableThumbnailCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/amazon/klo/list/PageListAdapter;->hasBeenDisposed:Z

    .line 71
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter;->thumbnailCacheLock:Ljava/lang/Object;

    .line 73
    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter;->generateThumbnailsAsync()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/klo/list/PageListAdapter;)Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/klo/list/PageListAdapter;->itemClickListener:Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/klo/list/PageListAdapter;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/amazon/klo/list/PageListAdapter;->hasBeenDisposed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/klo/list/PageListAdapter;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/klo/list/PageListAdapter;->thumbnailCacheLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/klo/list/PageListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/klo/list/PageListAdapter;->printReplicaThumbnailCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/klo/list/PageListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/klo/list/PageListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/klo/list/PageListAdapter;->reflowableThumbnailCache:Ljava/util/HashMap;

    return-object p0
.end method

.method private buildBackgroundExecutor()Lcom/amazon/klo/PauseableThreadPoolExecutor;
    .locals 2

    .line 398
    new-instance v0, Lcom/amazon/klo/PauseableThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/klo/PauseableThreadPoolExecutor;-><init>(I)V

    .line 399
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    return-object v0
.end method

.method private generateThumbnailsAsync()V
    .locals 17

    move-object/from16 v10, p0

    .line 261
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    invoke-direct {v10, v0}, Lcom/amazon/klo/list/PageListAdapter;->getThumbnailWidth(Landroid/content/Context;)I

    move-result v11

    .line 264
    invoke-direct {v10, v0}, Lcom/amazon/klo/list/PageListAdapter;->getThumbnailHeight(Landroid/content/Context;)I

    move-result v12

    .line 266
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v13

    .line 267
    new-instance v14, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    iget-object v0, v10, Lcom/amazon/klo/list/PageListAdapter;->pageListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/list/PageListItem;

    .line 271
    invoke-virtual {v0}, Lcom/amazon/klo/list/PageListItem;->getLocation()I

    move-result v0

    invoke-interface {v13, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    .line 274
    invoke-static {}, Lcom/amazon/klo/KLOApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/klo/KLOApp;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v16, Lcom/amazon/klo/list/PageListAdapter$2;

    const/16 v2, 0xa

    const-wide/16 v3, 0x9c4

    iget-object v5, v10, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v7, v11

    move v8, v12

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lcom/amazon/klo/list/PageListAdapter$2;-><init>(Lcom/amazon/klo/list/PageListAdapter;IJLjava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/os/Handler;)V

    goto :goto_1

    .line 317
    :cond_0
    new-instance v16, Lcom/amazon/klo/list/PageListAdapter$3;

    const/16 v2, 0xa

    const-wide/16 v3, 0x9c4

    iget-object v5, v10, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v7, v12

    move v8, v11

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lcom/amazon/klo/list/PageListAdapter$3;-><init>(Lcom/amazon/klo/list/PageListAdapter;IJLjava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/os/Handler;)V

    .line 355
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/klo/list/PageListAdapter$Retryable;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getThumbnailHeight(Landroid/content/Context;)I
    .locals 1

    .line 378
    invoke-static {}, Lcom/amazon/klo/KLOApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/klo/KLOApp;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget v0, Lcom/amazon/klo/R$dimen;->klo_termdetail_found_thumbnail_fixedformat_height:I

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter;->isReaderInLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/amazon/klo/R$dimen;->klo_termdetail_found_thumbnail_reflowable_short:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/klo/R$dimen;->klo_termdetail_found_thumbnail_reflowable_long:I

    .line 388
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method private getThumbnailWidth(Landroid/content/Context;)I
    .locals 1

    .line 362
    invoke-static {}, Lcom/amazon/klo/KLOApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/klo/KLOApp;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget v0, Lcom/amazon/klo/R$dimen;->klo_termdetail_found_thumbnail_fixedformat_width:I

    goto :goto_0

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter;->isReaderInLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/amazon/klo/R$dimen;->klo_termdetail_found_thumbnail_reflowable_long:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/klo/R$dimen;->klo_termdetail_found_thumbnail_reflowable_short:I

    .line 372
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method private isReaderInLandscape()Z
    .locals 2

    .line 393
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getInstance()Lcom/amazon/klo/KindleLearningObjectPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getReaderOrientation()Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;

    move-result-object v0

    sget-object v1, Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;->LANDSCAPE:Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/amazon/klo/list/PageListAdapter;->hasBeenDisposed:Z

    .line 192
    iget-object v1, p0, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 194
    iget-object v1, p0, Lcom/amazon/klo/list/PageListAdapter;->thumbnailCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/amazon/klo/list/PageListAdapter;->reflowableThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    .line 199
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->dispose()V

    goto :goto_0

    :cond_0
    const-string v2, "Disposed of %d reflowable thumbnail view(s)"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 202
    iget-object v4, p0, Lcom/amazon/klo/list/PageListAdapter;->reflowableThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->printReplicaThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->reflowableThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 206
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Lcom/amazon/klo/list/PageListItem;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->pageListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->pageListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/PageListItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->pageListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/klo/list/PageListAdapter;->onBindViewHolder(Lcom/amazon/klo/list/PageListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/klo/list/PageListAdapter$ViewHolder;I)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->pageListItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/klo/list/PageListItem;

    .line 100
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    iget-object v1, p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->pageLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/amazon/klo/list/PageListItem;->getPageLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->chapterTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/amazon/klo/list/PageListItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/klo/list/PageListItem;->getLocation()I

    move-result p2

    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    .line 107
    invoke-static {}, Lcom/amazon/klo/KLOApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/klo/KLOApp;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/amazon/klo/list/PageListAdapter;->printReplicaThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->printReplicaThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->reflowableThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->reflowableThumbnailCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->getObject()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 128
    iget-object p2, p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 131
    :cond_2
    iget-object p2, p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailSelector:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_3

    .line 133
    iget-object p2, p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailSelector:Landroid/view/View;

    new-instance v0, Lcom/amazon/klo/list/PageListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/klo/list/PageListAdapter$1;-><init>(Lcom/amazon/klo/list/PageListAdapter;Lcom/amazon/klo/list/PageListAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/amazon/klo/list/PageListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/klo/list/PageListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/klo/list/PageListAdapter$ViewHolder;
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 80
    sget v0, Lcom/amazon/klo/R$layout;->klo_page_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    new-instance p2, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 84
    iget-object v0, p2, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/amazon/klo/list/PageListAdapter;->getThumbnailWidth(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/amazon/klo/list/PageListAdapter;->getThumbnailHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-static {}, Lcom/amazon/klo/KLOApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/klo/KLOApp;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/amazon/klo/KLOApp;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/klo/R$drawable;->klo_termdetail_found_thumbnail_border_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/klo/R$drawable;->klo_termdetail_found_thumbnail_border_light:I

    .line 89
    :goto_0
    iget-object v1, p2, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/list/PageListAdapter;->onViewRecycled(Lcom/amazon/klo/list/PageListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/amazon/klo/list/PageListAdapter$ViewHolder;)V
    .locals 2

    .line 150
    iget-object v0, p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 152
    iget-object p1, p1, Lcom/amazon/klo/list/PageListAdapter$ViewHolder;->thumbnailContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/amazon/klo/list/PageListAdapter;->hasBeenDisposed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/amazon/klo/list/PageListAdapter;->hasBeenDisposed:Z

    .line 233
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter;->buildBackgroundExecutor()Lcom/amazon/klo/PauseableThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter;->generateThumbnailsAsync()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter;->backgroundThumbnailTasks:Lcom/amazon/klo/PauseableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/klo/PauseableThreadPoolExecutor;->resume()V

    .line 245
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazon/klo/list/PageListAdapter;->itemClickListener:Lcom/amazon/klo/list/PageListAdapter$OnItemClickListener;

    return-void
.end method
