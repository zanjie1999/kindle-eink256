.class public Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;
.super Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;
.source "TicrDocViewerEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialized:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialized:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getBookEndPosition()D
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    int-to-double v0, v0

    .line 124
    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    .line 125
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EA_ERL"

    .line 124
    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v0, v0

    goto :goto_0

    .line 130
    :catch_0
    sget-object v3, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid end reading location provided: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method protected getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    return-object v0
.end method

.method protected getNextChapterPosition(I)I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IBookTOC;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IBookTOC;->getNextChapterPosition(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected getNumWordsBetweenPositions(III)I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/KindleDoc;->getNumWordsBetweenPositions(III)I

    move-result p1

    return p1
.end method

.method protected getPageEndPosition()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v0

    return v0
.end method

.method protected getPageStartPosition()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    return v0
.end method

.method public getTimeRemainingStringForBook()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForBook(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeRemainingStringForChapter()Ljava/lang/String;
    .locals 3

    .line 183
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->CHAPTER_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForChapter(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;ILcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasTOC()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;-><init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected isInitialized()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialized:Z

    return v0
.end method

.method public navigationListener(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v0, v1, :cond_1

    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationDirection()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object p1

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->onDocViewerAfterPositionChanged(Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)V

    return-void
.end method

.method protected tearDown()V
    .locals 1

    .line 188
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialized:Z

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method
