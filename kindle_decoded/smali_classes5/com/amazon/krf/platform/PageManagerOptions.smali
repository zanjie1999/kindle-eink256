.class public Lcom/amazon/krf/platform/PageManagerOptions;
.super Ljava/lang/Object;
.source "PageManagerOptions.java"


# instance fields
.field private mCropToContentRegion:Z

.field private mMaxPageRect:Landroid/graphics/Rect;

.field private mScreenfulRect:Landroid/graphics/Rect;

.field private mScreenfulToCache:F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mMaxPageRect:Landroid/graphics/Rect;

    .line 22
    iput-object p2, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mScreenfulRect:Landroid/graphics/Rect;

    .line 23
    iput p3, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mScreenfulToCache:F

    return-void
.end method


# virtual methods
.method public getMaxPageRect()Landroid/graphics/Rect;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mMaxPageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNumberOfScreenfulsToCache()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mScreenfulToCache:F

    return v0
.end method

.method public getScreenfulRect()Landroid/graphics/Rect;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mScreenfulRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCropToContentRegion()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mCropToContentRegion:Z

    return v0
.end method

.method public setCropToContentRegion(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mCropToContentRegion:Z

    return-void
.end method

.method public setMaxPageRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mMaxPageRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setNumberOfScreenfulsToCache(F)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mScreenfulToCache:F

    return-void
.end method

.method public setScreenfulRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/krf/platform/PageManagerOptions;->mScreenfulRect:Landroid/graphics/Rect;

    return-void
.end method
