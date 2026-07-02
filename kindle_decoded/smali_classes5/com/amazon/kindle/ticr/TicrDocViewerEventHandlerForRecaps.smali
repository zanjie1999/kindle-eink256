.class public Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;
.super Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;
.source "TicrDocViewerEventHandlerForRecaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private initialized:Z

.field private mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->initialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->initialized:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->initialized:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;)Lcom/amazon/kindle/yj/IMarginalContentProviderContext;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)Lcom/amazon/kindle/yj/IMarginalContentProviderContext;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getBookEndPosition()D
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookEndPosition()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method protected getNextChapterPosition(I)I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getNextChapterPosition(I)I

    move-result p1

    return p1
.end method

.method protected getNumWordsBetweenPositions(III)I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getNumWordsBetweenPositions(III)I

    move-result p1

    return p1
.end method

.method protected getPageEndPosition()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getPageEndPosition()I

    move-result v0

    return v0
.end method

.method protected getPageStartPosition()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getPageStartPosition()I

    move-result v0

    return v0
.end method

.method public getTimeRemainingStringForBook()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTimeRemainingStringForChapter()Ljava/lang/String;
    .locals 3

    .line 172
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->RECAPS_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForChapter(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;ILcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasTOC()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->hasTOC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V
    .locals 2

    .line 104
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;-><init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected isInitialized()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->initialized:Z

    return v0
.end method

.method public navigationListener(Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v0, v1, :cond_1

    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->getNavigationDirection()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object p1

    .line 121
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->onDocViewerAfterPositionChanged(Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)V

    return-void
.end method

.method protected tearDown()V
    .locals 1

    .line 177
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->initialized:Z

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    return-void
.end method
