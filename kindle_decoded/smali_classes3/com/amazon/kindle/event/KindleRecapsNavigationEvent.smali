.class public Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;
.super Ljava/lang/Object;
.source "KindleRecapsNavigationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private final eventType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

.field private final navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

.field private final navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

.field private final rangeEnd:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final rangeStart:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V
    .locals 7

    .line 42
    new-instance v5, Lcom/amazon/kindle/model/Annotations/IntPosition;

    long-to-int p6, p5

    invoke-direct {v5, p6}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v6, Lcom/amazon/kindle/model/Annotations/IntPosition;

    long-to-int p5, p7

    invoke-direct {v6, p5}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->eventType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 59
    iput-object p3, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-eqz p4, :cond_0

    .line 60
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_0
    iput-object p4, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 61
    iput-object p5, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->rangeStart:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 62
    iput-object p6, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->rangeEnd:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-void
.end method


# virtual methods
.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0
.end method

.method public getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->eventType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    return-object v0
.end method

.method public getNavigationDirection()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->navigationDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    return-object v0
.end method

.method public getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/event/KindleRecapsNavigationEvent;->navigationType:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
