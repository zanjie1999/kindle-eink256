.class public Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;
.super Ljava/lang/Object;
.source "KRIFBookContentDecorationEventListener.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentDecorationEventListener;


# static fields
.field private static MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

.field private docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->TAG:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

    .line 44
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private contentDecorationToKrxDecorationStyle(Lcom/amazon/krf/platform/ContentDecoration;)Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecoration;->getStyle()Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result p1

    .line 99
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->WORDWISE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 100
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object p1

    .line 101
    :cond_0
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 102
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;Lcom/amazon/krf/platform/PositionRange;FF)V
    .locals 9

    .line 126
    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    .line 127
    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    long-to-int p2, v2

    .line 128
    new-instance v0, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    new-instance v4, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v4, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v5, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v5, p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    sget-object v6, Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;->Tap:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    move-object v2, v0

    move-object v3, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;-><init>(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;FF)V

    .line 130
    sget-object p1, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private publishEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;-><init>(Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 113
    sget-object p1, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public onContentDecorationHoverBegin(Lcom/amazon/krf/platform/ContentDecoration;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onContentDecorationHoverEnd(Lcom/amazon/krf/platform/ContentDecoration;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onContentDecorationMoved(Lcom/amazon/krf/platform/ContentDecoration;Lcom/amazon/krf/platform/ContentDecoration;)V
    .locals 0

    return-void
.end method

.method public onDecorationClicked(Lcom/amazon/krf/platform/ContentDecoration;FF)Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentDecorationToAnnotation(Lcom/amazon/krf/platform/ContentDecoration;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->contentDecorationToKrxDecorationStyle(Lcom/amazon/krf/platform/ContentDecoration;)Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->publishEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecoration;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->publishEvent(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;Lcom/amazon/krf/platform/PositionRange;FF)V

    .line 59
    sget-object p1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;->bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->isBubbleAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method
