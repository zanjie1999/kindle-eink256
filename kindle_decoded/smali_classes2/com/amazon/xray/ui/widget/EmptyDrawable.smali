.class public Lcom/amazon/xray/ui/widget/EmptyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EmptyDrawable.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v0}, Lcom/amazon/xray/ui/widget/EmptyDrawable;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    iput p1, p0, Lcom/amazon/xray/ui/widget/EmptyDrawable;->width:I

    .line 36
    iput p2, p0, Lcom/amazon/xray/ui/widget/EmptyDrawable;->height:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/xray/ui/widget/EmptyDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/xray/ui/widget/EmptyDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
