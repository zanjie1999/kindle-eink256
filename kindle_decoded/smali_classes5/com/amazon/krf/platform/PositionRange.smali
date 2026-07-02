.class public Lcom/amazon/krf/platform/PositionRange;
.super Ljava/lang/Object;
.source "PositionRange.java"


# instance fields
.field end:Lcom/amazon/krf/platform/Position;

.field start:Lcom/amazon/krf/platform/Position;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    .line 18
    iput-object p2, p0, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    return-void
.end method


# virtual methods
.method public contains(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/krf/platform/PositionRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    .line 70
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    .line 71
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/amazon/krf/platform/PositionRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    check-cast p1, Lcom/amazon/krf/platform/PositionRange;

    .line 48
    iget-object v1, p0, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 49
    :goto_1
    iget-object v3, p0, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    iget-object p1, p1, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    if-nez v3, :cond_4

    if-nez p1, :cond_5

    goto :goto_2

    :cond_4
    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_5

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getFirstPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method

.method public getLastPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public overlaps(Lcom/amazon/krf/platform/PositionRange;)Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/amazon/krf/platform/PositionRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    iget-object v1, p1, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    .line 81
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p1, Lcom/amazon/krf/platform/PositionRange;->end:Lcom/amazon/krf/platform/Position;

    iget-object v0, p0, Lcom/amazon/krf/platform/PositionRange;->start:Lcom/amazon/krf/platform/Position;

    .line 82
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
