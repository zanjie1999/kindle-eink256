.class public Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "BoundAlphaAnimation.java"


# instance fields
.field private fromAlpha:F

.field private toAlpha:F

.field private final view:Lcom/amazon/kindle/mangaviewer/BoundImageView;


# direct methods
.method public constructor <init>(FFLcom/amazon/kindle/mangaviewer/BoundImageView;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 16
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;->fromAlpha:F

    .line 17
    iput p2, p0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;->toAlpha:F

    .line 18
    iput-object p3, p0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;->view:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 28
    invoke-super {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 29
    iget-object p2, p0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;->view:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;->fromAlpha:F

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;->toAlpha:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setAlpha(I)V

    .line 30
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;->view:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
