.class public abstract Lcom/amazon/krf/platform/element/PageElement;
.super Ljava/lang/Object;
.source "PageElement.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_KVG:I = 0x8

.field public static final TYPE_LINK:I = 0x4

.field public static final TYPE_WORD:I = 0x1


# instance fields
.field private final mRange:Lcom/amazon/krf/platform/PositionRange;

.field private final mRectangles:[Landroid/graphics/RectF;


# direct methods
.method protected constructor <init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/krf/platform/element/PageElement;->mRange:Lcom/amazon/krf/platform/PositionRange;

    .line 38
    iput-object p2, p0, Lcom/amazon/krf/platform/element/PageElement;->mRectangles:[Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getCoveringRectangles()[Landroid/graphics/RectF;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/krf/platform/element/PageElement;->mRectangles:[Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/krf/platform/element/PageElement;->mRange:Lcom/amazon/krf/platform/PositionRange;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public positionRangeEquals(Lcom/amazon/krf/platform/element/PageElement;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/PositionRange;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
