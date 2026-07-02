.class public final Lcom/amazon/kindle/cs/FastNavigationMetrics;
.super Ljava/lang/Object;
.source "FastNavigationMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;,
        Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;,
        Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;,
        Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;,
        Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

.field private static final TAG:Ljava/lang/String;

.field private static volatile actionTypeQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile currentEndRange:Lcom/amazon/android/docviewer/IPositionRange;

.field private static volatile currentStartRange:Lcom/amazon/android/docviewer/IPositionRange;

.field private static existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

.field private static volatile isPageFlipScrolling:Z

.field private static volatile isPagePinPress:Z

.field private static volatile lastStartRange:Lcom/amazon/android/docviewer/IPositionRange;

.field private static newMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

.field private static volatile startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;

    invoke-direct {v0}, Lcom/amazon/kindle/cs/FastNavigationMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

    .line 67
    const-class v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(FastNavigationMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPageFlipScrolling:Z

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearActionQueue()V
    .locals 0

    .line 22
    invoke-static {}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->clearActionQueue()V

    return-void
.end method

.method private static final clearActionQueue()V
    .locals 1

    .line 239
    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private final emitMetric(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;)V
    .locals 13

    .line 288
    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitting FastNavigation metric "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , from position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_1

    .line 289
    invoke-interface/range {p6 .. p6}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->CHROME:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    if-eqz p2, :cond_2

    .line 292
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->READING:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    :cond_2
    move-object v4, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 297
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 298
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v1

    move v9, v1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz p5, :cond_4

    .line 301
    invoke-interface/range {p5 .. p5}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    move v7, v1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz p6, :cond_5

    .line 302
    invoke-interface/range {p6 .. p6}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    move v8, v0

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    .line 305
    :goto_4
    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    .line 306
    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    const/4 v10, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x0

    move-object v3, v1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;-><init>(Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 314
    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->newMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    .line 319
    invoke-virtual {v1}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getShouldAggregate()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_6

    .line 321
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;->emitFastNavMetricsV2(Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;)V

    .line 322
    sput-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics;->existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    .line 325
    :cond_6
    invoke-static {v1}, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;->emitFastNavMetricsV2(Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;)V

    goto :goto_6

    :cond_7
    if-nez v0, :cond_8

    .line 329
    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    goto :goto_6

    .line 333
    :cond_8
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->aggregate(Lcom/amazon/kindle/cs/AggregatedMetric;)Lcom/amazon/kindle/cs/AggregatedMetric;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 335
    instance-of v0, v3, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v2, v3

    :goto_5
    check-cast v2, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    sput-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics;->existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    goto :goto_6

    .line 337
    :cond_a
    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    .line 338
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;->emitFastNavMetricsV2(Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;)V

    :goto_6
    return-void
.end method

.method private final getCurrentPositionRange(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    if-eqz p1, :cond_0

    .line 250
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    .line 252
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result p1

    .line 253
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v1, v0, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static final initialize()V
    .locals 2

    .line 93
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final declared-synchronized reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V
    .locals 8

    const-class v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;

    monitor-enter v0

    :try_start_0
    const-string v1, "actionType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "navigationType"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->HORIZONTAL:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    .line 109
    invoke-static {p0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->VERTICAL:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    :cond_0
    move-object v5, v1

    .line 113
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    const/4 v2, 0x0

    if-ne p3, v1, :cond_4

    .line 114
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emitting pre-nav event "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_FLIP_SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p2, p1, :cond_1

    .line 119
    sput-boolean v2, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPageFlipScrolling:Z

    goto :goto_0

    .line 121
    :cond_1
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->getCurrentPositionRange(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p0

    sput-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->currentStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    .line 126
    :goto_0
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 129
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->RUBBERBAND:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p2, p0, :cond_2

    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p0, p1, :cond_2

    .line 130
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 133
    :cond_2
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->startTime:J

    goto/16 :goto_4

    .line 137
    :cond_4
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    if-ne p3, v1, :cond_f

    .line 138
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emitting post-nav event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_PIN_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v1, 0x1

    if-eq p2, p3, :cond_e

    .line 141
    sget-wide v3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long p3, v3, v6

    if-lez p3, :cond_10

    .line 143
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    .line 144
    sget-object v3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p3, v3, :cond_5

    sget-object v3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-eq p2, v3, :cond_5

    .line 146
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "waiting on the next scrubber end event"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    return-void

    .line 148
    :cond_5
    :try_start_1
    sget-object v3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_FLIP_SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p3, v3, :cond_6

    .line 150
    sput-boolean v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPageFlipScrolling:Z

    :cond_6
    const/4 p3, 0x0

    .line 156
    sget-boolean v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPagePinPress:Z

    if-nez v1, :cond_7

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 157
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    goto :goto_1

    .line 158
    :cond_7
    sget-boolean v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPagePinPress:Z

    if-eqz v1, :cond_8

    .line 159
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_PIN_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    .line 160
    sput-boolean v2, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPagePinPress:Z

    :cond_8
    :goto_1
    move-object v4, p3

    if-nez v4, :cond_9

    .line 164
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->TAG:Ljava/lang/String;

    const-string p1, "found a null post nav action"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    monitor-exit v0

    return-void

    .line 170
    :cond_9
    :try_start_2
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_TURN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-eq p2, p3, :cond_b

    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p2, p3, :cond_a

    goto :goto_2

    .line 171
    :cond_a
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->currentStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    goto :goto_3

    :cond_b
    :goto_2
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->lastStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    :goto_3
    move-object v6, p3

    .line 172
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->getCurrentPositionRange(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p3

    .line 174
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_FLIP_SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-eq p2, v1, :cond_c

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p2, v1, :cond_d

    .line 175
    :cond_c
    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->currentEndRange:Lcom/amazon/android/docviewer/IPositionRange;

    .line 178
    :cond_d
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->emitMetric(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;)V

    .line 179
    sput-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics;->lastStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    goto :goto_4

    .line 182
    :cond_e
    sput-boolean v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPagePinPress:Z

    .line 187
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    if-ne p0, p1, :cond_10

    .line 188
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->actionTypeQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_4

    .line 194
    :cond_f
    sput-boolean v2, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPagePinPress:Z

    .line 195
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

    sget-object v6, Lcom/amazon/kindle/cs/FastNavigationMetrics;->lastStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    sget-object v7, Lcom/amazon/kindle/cs/FastNavigationMetrics;->lastStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->emitMetric(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :cond_10
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized setEndPositionRange(Lcom/amazon/android/docviewer/IPositionRange;)V
    .locals 2

    const-class v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;

    monitor-enter v0

    :try_start_0
    const-string v1, "positionRange"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sput-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->currentEndRange:Lcom/amazon/android/docviewer/IPositionRange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized setStartPositionRange(Lcom/amazon/android/docviewer/IPositionRange;Z)V
    .locals 2

    const-class v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;

    monitor-enter v0

    :try_start_0
    const-string v1, "positionRange"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-boolean v1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->isPageFlipScrolling:Z

    if-eqz v1, :cond_0

    .line 210
    sput-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->currentStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    :cond_0
    if-eqz p1, :cond_1

    .line 216
    sget-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->currentStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    sput-object p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->lastStartRange:Lcom/amazon/android/docviewer/IPositionRange;

    .line 219
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final flushAggregatedMetrics()V
    .locals 1

    .line 262
    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    if-eqz v0, :cond_0

    .line 264
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;->emitFastNavMetricsV2(Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;)V

    const/4 v0, 0x0

    .line 265
    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics;->existingMetric:Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;

    :cond_0
    return-void
.end method
