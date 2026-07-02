.class public interface abstract Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;
.super Ljava/lang/Object;
.source "IReadingListRecommendationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;
    }
.end annotation


# virtual methods
.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPriority()Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getVisibility()Lcom/amazon/kindle/krx/ui/ComponentStatus;
.end method

.method public abstract onClick()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
