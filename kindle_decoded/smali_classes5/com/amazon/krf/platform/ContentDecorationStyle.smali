.class public Lcom/amazon/krf/platform/ContentDecorationStyle;
.super Ljava/lang/Object;
.source "ContentDecorationStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;
    }
.end annotation


# instance fields
.field protected mBackgroundColor:I

.field protected mBorderColor:I

.field protected mBorderRadius:F

.field protected mBorderWeight:F

.field protected mContentDecorationStyleID:I

.field protected mForegroundColor:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIFF)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mContentDecorationStyleID:I

    .line 29
    iput p2, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mForegroundColor:I

    .line 30
    iput p3, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBackgroundColor:I

    .line 31
    iput p4, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderColor:I

    .line 32
    iput p5, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderWeight:F

    .line 33
    iput p6, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderRadius:F

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBackgroundColor:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderColor:I

    return v0
.end method

.method public getBorderRadius()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderRadius:F

    return v0
.end method

.method public getBorderWeight()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderWeight:F

    return v0
.end method

.method public getContentDecorationStyleID()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mContentDecorationStyleID:I

    return v0
.end method

.method public getForegroundColor()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mForegroundColor:I

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBackgroundColor:I

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderColor:I

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderRadius:F

    return-void
.end method

.method public setBorderWeight(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mBorderWeight:F

    return-void
.end method

.method public setDecorationStyleID(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mContentDecorationStyleID:I

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/amazon/krf/platform/ContentDecorationStyle;->mForegroundColor:I

    return-void
.end method
