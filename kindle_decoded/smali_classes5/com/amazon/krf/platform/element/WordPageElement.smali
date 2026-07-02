.class public Lcom/amazon/krf/platform/element/WordPageElement;
.super Lcom/amazon/krf/platform/element/TextPageElement;
.source "WordPageElement.java"


# instance fields
.field private final mStartsLine:Z


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/platform/element/TextPageElement;-><init>(Lcom/amazon/krf/platform/PositionRange;[Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 22
    iput-boolean p4, p0, Lcom/amazon/krf/platform/element/WordPageElement;->mStartsLine:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFirstOnLine()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amazon/krf/platform/element/WordPageElement;->mStartsLine:Z

    return v0
.end method
