.class public Lcom/amazon/kindle/yj/ui/ContentMissingViewController;
.super Ljava/lang/Object;
.source "ContentMissingViewController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private assetGroupProgressTracker:Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

.field private assetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bookID:Lcom/amazon/kindle/model/content/IBookID;

.field private contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

.field private contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

.field private event:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

.field private pageAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end field

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->pageAssets:Ljava/util/List;

    .line 48
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContentAvailabilityController()Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    .line 49
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/ui/ContentMissingView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;Lcom/amazon/kindle/yj/ui/ContentMissingView;)Lcom/amazon/kindle/yj/ui/ContentMissingView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetGroupProgressTracker:Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->setUpContentMissingViewState()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetIds:Ljava/util/List;

    return-object p0
.end method

.method private changeViewVisibility(I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    new-instance v1, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$2;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setUpContentMissingViewState()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-virtual {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->resetView()V

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->changeViewVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetGroupProgressTracker:Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->registerProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-virtual {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->subscribeToNavigationEvents()V

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->setRetryListener(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)V

    return-void
.end method

.method private tearDownContentMissingViewState()V
    .locals 2

    const/16 v0, 0x8

    .line 114
    invoke-direct {p0, v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->changeViewVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetGroupProgressTracker:Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->deregisterProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-virtual {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->unsubscribeFromNavigationEvents()V

    return-void
.end method


# virtual methods
.method public ContentMissingEventListener(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->event:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->getAssetIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetIds:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->pageAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetIds:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAssetsForAssetIds(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->pageAssets:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 72
    :cond_0
    new-instance v0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->pageAssets:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetGroupProgressTracker:Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    .line 73
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got ContentMissingEvent for bookID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " readerLayout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " activity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " assetGroupProgressTracker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetGroupProgressTracker:Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentMissingEvent has assetId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public clearState()V
    .locals 1

    .line 158
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public pageNavigationEventListener(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v0, v1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-ne v0, p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetGroupProgressTracker:Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->assetIds:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->removeAssetDownloadTracker(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V

    .line 149
    invoke-direct {p0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->tearDownContentMissingViewState()V

    :cond_1
    return-void
.end method

.method public retryDownload()V
    .locals 2

    .line 162
    invoke-direct {p0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->tearDownContentMissingViewState()V

    .line 163
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->handleDownloadError(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->event:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->ContentMissingEventListener(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V

    return-void
.end method
