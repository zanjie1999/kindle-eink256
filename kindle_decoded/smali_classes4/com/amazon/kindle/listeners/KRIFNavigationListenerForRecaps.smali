.class public Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;
.super Lcom/amazon/krf/platform/SimpleNavigationListener;
.source "KRIFNavigationListenerForRecaps.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private ttsReaderNavigationListener:Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/krf/platform/SimpleNavigationListener;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->getNavigationDirectionFromEndEvent(Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->publishNavEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V

    return-void
.end method

.method private getNavigationDirectionFromEndEvent(Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 1

    .line 79
    sget-object v0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$2;->$SwitchMap$com$amazon$krf$platform$event$NavigationDirection:[I

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 88
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_0

    .line 84
    :cond_0
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_0

    .line 81
    :cond_1
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_0
    return-object p1
.end method

.method private handleNavigationEvents(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 11

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getPageChangeDelegateInterface()Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    .line 139
    iget-object v3, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {v3}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getTocForReadingMode()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 140
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 141
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v4

    .line 143
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 145
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 146
    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v8, v1

    if-nez v10, :cond_0

    .line 148
    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    if-lez v10, :cond_1

    move-object v5, v6

    goto :goto_1

    .line 154
    :cond_1
    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 157
    sget-object v4, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->TAG:Ljava/lang/String;

    const-string v5, "Not updating the chapter name"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_3
    invoke-interface {v0, v5}, Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;->updateChapterName(Ljava/lang/String;)V

    .line 162
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    .line 163
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object p1

    iget-object v6, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    .line 164
    invoke-virtual {v6}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/amazon/krf/platform/KRFBookInfo;->getLastPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v6

    long-to-int p1, v1

    long-to-int v1, v4

    long-to-int v2, v6

    .line 165
    invoke-interface {v0, p1, v1, v3, v2}, Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;->updateLastPositionReadInformation(IILcom/amazon/kindle/krx/reader/ITableOfContents;I)V

    return-void
.end method

.method private publishNavEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V
    .locals 9

    if-eqz p2, :cond_0

    .line 94
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    :goto_0
    move-object v3, p2

    .line 96
    new-instance p2, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;

    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 97
    invoke-virtual {p4}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    invoke-virtual {p4}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v7

    move-object v0, p2

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "publishEvent invoked... "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez p1, :cond_1

    .line 101
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    .line 102
    const-class p3, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    invoke-interface {p1, p3}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public onPageChange(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->handleNavigationEvents(Lcom/amazon/krf/platform/event/NavigationEvent;)V

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->ttsReaderNavigationListener:Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;->onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onPositionRangeChanged(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->handleNavigationEvents(Lcom/amazon/krf/platform/event/NavigationEvent;)V

    return-void
.end method

.method public onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;-><init>(Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;Lcom/amazon/krf/platform/event/NavigationEndEvent;)V

    .line 72
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->ttsReaderNavigationListener:Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;->onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onPostPageTransitionAnimation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFView()Lcom/amazon/krf/platform/KRFView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBook;->getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->bookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getContentAvailabilityController()Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    move-result-object p1

    .line 117
    invoke-interface {p1, v0}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->areAllAssetsAttached(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-interface {p1, v0}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->prioritizeAssetDownloads(Ljava/util/List;)V

    :cond_1
    return-void

    .line 113
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find container for the position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onPreNavigation(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->ttsReaderNavigationListener:Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;->onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public setTtsReaderNavigationListener(Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->ttsReaderNavigationListener:Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;

    return-void
.end method
