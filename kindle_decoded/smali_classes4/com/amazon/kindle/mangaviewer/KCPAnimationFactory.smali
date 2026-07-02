.class public Lcom/amazon/kindle/mangaviewer/KCPAnimationFactory;
.super Ljava/lang/Object;
.source "KCPAnimationFactory.java"


# direct methods
.method public static createAlphaAnimation(FFLcom/amazon/kindle/mangaviewer/BoundImageView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/BoundAlphaAnimation;-><init>(FFLcom/amazon/kindle/mangaviewer/BoundImageView;)V

    return-object v0
.end method

.method public static createScaleAnimation(FFFF)Landroid/view/animation/ScaleAnimation;
    .locals 1

    .line 48
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public static createTranslateAnimation(FFFF)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 33
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method
