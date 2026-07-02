.class public Lcom/amazon/krf/platform/event/NavigationEndEvent;
.super Lcom/amazon/krf/platform/event/NavigationEvent;
.source "NavigationEndEvent.java"


# instance fields
.field private mOldRange:Lcom/amazon/krf/platform/PositionRange;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/amazon/krf/platform/PositionRange;

    sget-object v1, Lcom/amazon/krf/platform/Position;->invalidPosition:Lcom/amazon/krf/platform/Position;

    invoke-direct {v0, v1, v1}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    new-instance v1, Lcom/amazon/krf/platform/PositionRange;

    sget-object v2, Lcom/amazon/krf/platform/Position;->invalidPosition:Lcom/amazon/krf/platform/Position;

    invoke-direct {v1, v2, v2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/krf/platform/event/NavigationEndEvent;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/PositionRange;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/PositionRange;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/amazon/krf/platform/event/NavigationEvent;-><init>(Lcom/amazon/krf/platform/PositionRange;Z)V

    .line 30
    iput-object p1, p0, Lcom/amazon/krf/platform/event/NavigationEndEvent;->mOldRange:Lcom/amazon/krf/platform/PositionRange;

    return-void
.end method


# virtual methods
.method public didNavigate()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/event/NavigationDirection;->None:Lcom/amazon/krf/platform/event/NavigationDirection;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getOldRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 59
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getOldRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 67
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    .line 71
    sget-object v0, Lcom/amazon/krf/platform/event/NavigationDirection;->Previous:Lcom/amazon/krf/platform/event/NavigationDirection;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 73
    sget-object v0, Lcom/amazon/krf/platform/event/NavigationDirection;->Next:Lcom/amazon/krf/platform/event/NavigationDirection;

    return-object v0

    .line 75
    :cond_2
    sget-object v0, Lcom/amazon/krf/platform/event/NavigationDirection;->None:Lcom/amazon/krf/platform/event/NavigationDirection;

    return-object v0
.end method

.method public getOldRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/krf/platform/event/NavigationEndEvent;->mOldRange:Lcom/amazon/krf/platform/PositionRange;

    return-object v0
.end method
