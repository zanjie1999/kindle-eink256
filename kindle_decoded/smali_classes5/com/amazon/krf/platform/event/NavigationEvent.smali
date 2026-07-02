.class public Lcom/amazon/krf/platform/event/NavigationEvent;
.super Ljava/lang/Object;
.source "NavigationEvent.java"


# instance fields
.field private mIsPaging:Z

.field private mRange:Lcom/amazon/krf/platform/PositionRange;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/amazon/krf/platform/PositionRange;

    sget-object v1, Lcom/amazon/krf/platform/Position;->invalidPosition:Lcom/amazon/krf/platform/Position;

    invoke-direct {v0, v1, v1}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/platform/event/NavigationEvent;-><init>(Lcom/amazon/krf/platform/PositionRange;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/krf/platform/event/NavigationEvent;->mRange:Lcom/amazon/krf/platform/PositionRange;

    .line 29
    iput-boolean p2, p0, Lcom/amazon/krf/platform/event/NavigationEvent;->mIsPaging:Z

    return-void
.end method


# virtual methods
.method public getCurrentRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/krf/platform/event/NavigationEvent;->mRange:Lcom/amazon/krf/platform/PositionRange;

    return-object v0
.end method

.method public isPagingTransition()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/amazon/krf/platform/event/NavigationEvent;->mIsPaging:Z

    return v0
.end method
