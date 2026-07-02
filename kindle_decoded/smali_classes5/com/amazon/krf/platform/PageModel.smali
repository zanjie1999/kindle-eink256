.class public Lcom/amazon/krf/platform/PageModel;
.super Ljava/lang/Object;
.source "PageModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/PageModel$PaginationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/krf/platform/PageModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mContentRegion:Landroid/graphics/RectF;

.field private mInfo:Lcom/amazon/krf/platform/PageModel$PaginationInfo;

.field private mPositionRange:Lcom/amazon/krf/platform/PositionRange;

.field private mPositionsOnPage:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/TreeMap;Lcom/amazon/krf/platform/PositionRange;Landroid/graphics/RectF;Lcom/amazon/krf/platform/PageModel$PaginationInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/krf/platform/PositionRange;",
            "Landroid/graphics/RectF;",
            "Lcom/amazon/krf/platform/PageModel$PaginationInfo;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazon/krf/platform/PageModel;->mPositionsOnPage:Ljava/util/TreeMap;

    .line 71
    iput-object p2, p0, Lcom/amazon/krf/platform/PageModel;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    .line 72
    iput-object p4, p0, Lcom/amazon/krf/platform/PageModel;->mInfo:Lcom/amazon/krf/platform/PageModel$PaginationInfo;

    .line 73
    iput-object p3, p0, Lcom/amazon/krf/platform/PageModel;->mContentRegion:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/krf/platform/PageModel;)I
    .locals 1

    if-eqz p1, :cond_3

    .line 152
    iget-object v0, p0, Lcom/amazon/krf/platform/PageModel;->mInfo:Lcom/amazon/krf/platform/PageModel$PaginationInfo;

    if-nez v0, :cond_1

    .line 154
    iget-object p1, p1, Lcom/amazon/krf/platform/PageModel;->mInfo:Lcom/amazon/krf/platform/PageModel$PaginationInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 155
    :cond_1
    iget-object p1, p1, Lcom/amazon/krf/platform/PageModel;->mInfo:Lcom/amazon/krf/platform/PageModel$PaginationInfo;

    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 160
    :cond_2
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->compareTo(Lcom/amazon/krf/platform/PageModel$PaginationInfo;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 149
    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/krf/platform/PageModel;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/PageModel;->compareTo(Lcom/amazon/krf/platform/PageModel;)I

    move-result p1

    return p1
.end method

.method public containsPosition(Lcom/amazon/krf/platform/Position;)Z
    .locals 5

    .line 85
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    .line 87
    iget-object p1, p0, Lcom/amazon/krf/platform/PageModel;->mPositionsOnPage:Ljava/util/TreeMap;

    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 94
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v0, v3

    if-gtz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getContentRegion()Landroid/graphics/RectF;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/krf/platform/PageModel;->mContentRegion:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFirstPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/krf/platform/PageModel;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    return-object v0
.end method

.method public getLastPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/krf/platform/PageModel;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    return-object v0
.end method

.method public getPaginationInfo()Lcom/amazon/krf/platform/PageModel$PaginationInfo;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/krf/platform/PageModel;->mInfo:Lcom/amazon/krf/platform/PageModel$PaginationInfo;

    return-object v0
.end method

.method public getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/krf/platform/PageModel;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    return-object v0
.end method
