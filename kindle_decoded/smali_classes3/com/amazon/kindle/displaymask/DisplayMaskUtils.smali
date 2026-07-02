.class public interface abstract Lcom/amazon/kindle/displaymask/DisplayMaskUtils;
.super Ljava/lang/Object;
.source "DisplayMaskUtils.kt"


# virtual methods
.method public abstract addScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V
.end method

.method public abstract deviceSupportsDisplayMask()Z
.end method

.method public abstract getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V
.end method
