.class public Lcom/amazon/kindle/listeners/KRIFNavigationListener;
.super Lcom/amazon/krf/platform/SimpleNavigationListener;
.source "KRIFNavigationListener.java"


# static fields
.field private static final NEXT_PAGE:Ljava/lang/String; = "NextPage"

.field private static final PAGE_TYPE:Ljava/lang/String; = "PdfBasedDocument"

.field private static final PREVIOUS_PAGE:Ljava/lang/String; = "PreviousPage"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_KEY:Ljava/lang/String; = "time"


# instance fields
.field private csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;"
        }
    .end annotation
.end field

.field private krifView:Lcom/amazon/kindle/rendering/KRIFView;

.field private krifViewInitializationComplete:Z

.field private lastNavigationTime:J

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/amazon/krf/platform/SimpleNavigationListener;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifViewInitializationComplete:Z

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->eventQueue:Ljava/util/Queue;

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 76
    iput-object p2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 77
    new-instance p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    invoke-direct {p1, p2}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/kindle/rendering/KRIFView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->getNavigationDirectionFromEndEvent(Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/kindle/event/PageTurnEvent$EventType;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishPageTurnEvent(Lcom/amazon/kindle/event/PageTurnEvent$EventType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishNavEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Ljava/util/Queue;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->eventQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifViewInitializationComplete:Z

    return p0
.end method

.method static synthetic access$702(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifViewInitializationComplete:Z

    return p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->eventQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifViewInitializationComplete:Z

    if-eqz v1, :cond_0

    .line 302
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->eventQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 307
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getNavigationDirectionFromEndEvent(Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 1

    .line 181
    sget-object v0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$3;->$SwitchMap$com$amazon$krf$platform$event$NavigationDirection:[I

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 190
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_0

    .line 186
    :cond_0
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_0

    .line 183
    :cond_1
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_0
    return-object p1
.end method

.method private isRunningOnMainThread()Z
    .locals 2

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 312
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 313
    const-class v1, Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private publishNavEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V
    .locals 9

    if-eqz p2, :cond_0

    .line 269
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    :goto_0
    move-object v3, p2

    .line 271
    new-instance p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 272
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

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 274
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p2}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p4

    if-ne p1, p4, :cond_3

    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 275
    invoke-virtual {p2}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, p4, :cond_3

    .line 276
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 278
    iget-wide v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->lastNavigationTime:J

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-eqz p4, :cond_1

    sub-long v2, v0, v2

    .line 279
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    const-string v2, "time"

    invoke-interface {p1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    iput-wide v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->lastNavigationTime:J

    .line 283
    sget-object p4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    const-string v0, "PdfBasedDocument"

    if-ne p3, p4, :cond_2

    const-string p3, "NextPage"

    .line 284
    invoke-static {v0, p3, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 285
    :cond_2
    sget-object p4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-ne p3, p4, :cond_3

    const-string p3, "PreviousPage"

    .line 286
    invoke-static {v0, p3, p1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private publishPageTurnEvent(Lcom/amazon/kindle/event/PageTurnEvent$EventType;)V
    .locals 1

    .line 264
    new-instance v0, Lcom/amazon/kindle/event/PageTurnEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/event/PageTurnEvent;-><init>(Lcom/amazon/kindle/event/PageTurnEvent$EventType;)V

    .line 265
    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private publishRubberbandingEvent(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publicRubberbandingEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;-><init>(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public onBookClose()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->sendCurrentMetrics()V

    .line 345
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->close()V

    return-void
.end method

.method public onExternalFullscreenViewClosed()V
    .locals 2

    .line 225
    new-instance v0, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onExternalFullscreenViewOpened()V
    .locals 2

    .line 220
    new-instance v0, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onExternalLinkClicked(Ljava/lang/String;)V
    .locals 2

    .line 215
    new-instance v0, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;

    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onLayoutComplete(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 4

    .line 207
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 208
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "bookRenderLayoutComplete"

    .line 209
    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method

.method public onNavigationFailed()V
    .locals 0

    return-void
.end method

.method public onPageChange(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 3

    .line 238
    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->isPagingTransition()Z

    move-result v0

    .line 239
    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->getNavigationDirectionFromEndEvent(Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object v1

    .line 244
    :cond_0
    sget-object v2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PAGE_CHANGE:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishNavEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V

    return-void
.end method

.method public onPositionRangeChanged(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 5

    const-string v0, "KRFView- onPositionRangeChanged"

    const/4 v1, 0x1

    .line 101
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 103
    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POSITION_RANGE_CHANGED:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->isPagingTransition()Z

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    invoke-virtual {v3}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->getScrollNavigationDirection()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishNavEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V

    .line 104
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->onPositionRangeChanged(Lcom/amazon/krf/platform/PositionRange;)V

    const/4 p1, 0x0

    .line 106
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;-><init>(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/krf/platform/event/NavigationEndEvent;)V

    .line 162
    invoke-direct {p0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->isRunningOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFView;->isDoneWithInitialDraw()Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onPostPageTransitionAnimation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 3

    const-string v0, "KRIFView.onPostPageTransitionAnimation"

    const/4 v1, 0x1

    .line 230
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".onPostPageTransitionAnimation invoked on thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    new-instance v1, Lcom/amazon/kindle/events/KRIFPostPageTransitionAnimationEvent;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->didNavigate()Z

    move-result p1

    invoke-direct {v1, p1}, Lcom/amazon/kindle/events/KRIFPostPageTransitionAnimationEvent;-><init>(Z)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->bufferOrPublishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 p1, 0x0

    .line 233
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPreNavigation(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "KRFView- onPreNavigation"

    .line 82
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->isPagingTransition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->PAGETURN_BEGIN:Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishPageTurnEvent(Lcom/amazon/kindle/event/PageTurnEvent$EventType;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->csReadingStreamHelper:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->onPreNavigation(Lcom/amazon/krf/platform/PositionRange;Z)V

    .line 95
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishNavEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V

    const/4 p1, 0x0

    .line 96
    invoke-static {v1, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onRenderComplete()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->onRenderComplete()V

    return-void
.end method

.method public onRubberbandingBegin()V
    .locals 1

    .line 249
    sget-object v0, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;->RUBBERBANDING_BEGIN:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishRubberbandingEvent(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;)V

    return-void
.end method

.method public onRubberbandingEnd()V
    .locals 1

    .line 254
    sget-object v0, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;->RUBBERBANDING_END:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->publishRubberbandingEvent(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;)V

    return-void
.end method

.method public sendBufferedEventsOnKrifViewInitializationComplete()V
    .locals 2

    .line 324
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;-><init>(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
