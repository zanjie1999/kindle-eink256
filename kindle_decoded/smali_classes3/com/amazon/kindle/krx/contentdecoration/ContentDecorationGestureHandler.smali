.class public Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;
.super Ljava/lang/Object;
.source "ContentDecorationGestureHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/gesture/IGestureHandler;


# static fields
.field private static final DEBUG_LOGS:Z = false

.field private static final GESTURE_PRIORITY:I = 0x36

.field private static final MAX_TAP_DISTANCE:F = 0.5f

.field private static final MAX_TAP_DURATION:I = 0x12c

.field private static MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final SCREEN_DPI:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

.field private savedUpEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

.field private triggeredSingleTapAfterUpEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->TAG:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 55
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->SCREEN_DPI:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    invoke-static {v0, p0, v1, p1}, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->computeInchDistance(FFFF)D

    move-result-wide p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static computeInchDistance(FFFF)D
    .locals 2

    sub-float/2addr p0, p2

    mul-float p0, p0, p0

    float-to-double v0, p0

    sub-float/2addr p1, p3

    mul-float p1, p1, p1

    float-to-double p0, p1

    add-double/2addr v0, p0

    .line 290
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    sget p1, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->SCREEN_DPI:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    return-wide p0
.end method

.method private getDecorationAtXY(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;
    .locals 2

    .line 255
    invoke-static {}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getRenderers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 258
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 13

    .line 202
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 203
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 205
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    .line 206
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 208
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 209
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 213
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v2, v4, :cond_4

    .line 218
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->getDecorationAtXY(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 223
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v4

    invoke-interface {v4, v0, p1, v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getPositionRange(IIZ)Lcom/amazon/kindle/krx/reader/IPositionRange;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 225
    iget-object v4, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->savedUpEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    .line 231
    :cond_2
    invoke-interface {v2}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    .line 232
    invoke-interface {v2}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v9

    .line 233
    sget-object v4, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selecting at tap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {v2}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v7

    sget-object v10, Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;->Tap:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    int-to-float v11, v0

    int-to-float v12, p1

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->publishEvent(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;FF)V

    .line 236
    invoke-interface {v2}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne p1, v0, :cond_3

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->isBubbleAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    return v3

    :cond_3
    return v5

    :cond_4
    return v3
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;FF)V
    .locals 9

    .line 294
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v8, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;-><init>(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;FF)V

    invoke-interface {v0, v8}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public onActivate()V
    .locals 0

    return-void
.end method

.method public onDeactivate()V
    .locals 0

    return-void
.end method

.method public onDoubleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->savedUpEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->triggeredSingleTapAfterUpEvent:Z

    return p1
.end method

.method public final onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 155
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->savedUpEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    .line 156
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->handleSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->triggeredSingleTapAfterUpEvent:Z

    return p1

    :cond_1
    return v1
.end method

.method public onHoverEnter(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHoverExit(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHoverMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSecondPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSecondPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->triggeredSingleTapAfterUpEvent:Z

    if-nez v0, :cond_1

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;->handleSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSwipe(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTwoFingerMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
