.class public Lcom/amazon/kindle/rendering/KRIFUIEventHandler;
.super Ljava/lang/Object;
.source "KRIFUIEventHandler.java"

# interfaces
.implements Lcom/amazon/krf/platform/UIEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;
    }
.end annotation


# static fields
.field private static final MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eventHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private krifView:Lcom/amazon/kindle/rendering/KRIFView;

.field private pinchGestureHandler:Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 24
    const-class v0, Lcom/amazon/kindle/rendering/KRIFUIEvent;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->eventHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->pinchGestureHandler:Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 31
    new-instance p1, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;

    invoke-direct {p1}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->pinchGestureHandler:Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/rendering/KRIFUIEvent;Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->publishEvent(Lcom/amazon/kindle/rendering/KRIFUIEvent;Lcom/amazon/kindle/rendering/KRIFView;)V

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method private static publishEvent(Lcom/amazon/kindle/rendering/KRIFUIEvent;Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 174
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$1;-><init>(Lcom/amazon/kindle/rendering/KRIFUIEvent;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public UIEndTransaction(Lcom/amazon/krf/platform/UIHandle;)V
    .locals 1

    .line 59
    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 63
    iget-boolean v0, p1, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->pinchGestureHandler:Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->onEndTransaction(Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;)V

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->handleEvent()V

    :cond_2
    :goto_1
    return-void
.end method

.method public UIEventHandled(Lcom/amazon/krf/platform/UIData;)V
    .locals 8

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got UIEventHandled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->eventHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got UIEventHandled even though we handled this event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->eventHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->DOUBLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->LONG_PRESS:Lcom/amazon/krf/platform/UIData$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    if-ne v0, v1, :cond_2

    .line 88
    :cond_1
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getY()F

    move-result v5

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getTransactionType()Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/rendering/KRIFUIEvent;-><init>(ZFFLcom/amazon/krf/platform/UIData$Type;Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 89
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {v0, p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->publishEvent(Lcom/amazon/kindle/rendering/KRIFUIEvent;Lcom/amazon/kindle/rendering/KRIFView;)V

    :cond_2
    return-void
.end method

.method public UISendEvent(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z
    .locals 7

    .line 41
    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->shouldHandleEvent(Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    if-ne v0, v1, :cond_1

    .line 43
    new-instance v6, Lcom/amazon/kindle/rendering/KRIFUIEvent;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getTransactionType()Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v5

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/rendering/KRIFUIEvent;-><init>(ZFFLcom/amazon/krf/platform/UIData$Type;Lcom/amazon/krf/platform/UIData$TransactionType;)V

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {v6, v0}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->publishEvent(Lcom/amazon/kindle/rendering/KRIFUIEvent;Lcom/amazon/kindle/rendering/KRIFView;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->eventHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->pinchGestureHandler:Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->handlePinchEvent(Lcom/amazon/krf/platform/UIData;)V

    return p1
.end method

.method public UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;
    .locals 2

    .line 35
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;-><init>(Lcom/amazon/krf/platform/UIData$TransactionType;FFLcom/amazon/kindle/rendering/KRIFView;)V

    return-object v0
.end method
