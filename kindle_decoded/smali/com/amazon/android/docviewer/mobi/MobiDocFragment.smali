.class public interface abstract Lcom/amazon/android/docviewer/mobi/MobiDocFragment;
.super Ljava/lang/Object;
.source "MobiDocFragment.java"


# virtual methods
.method public abstract cancelPendingPrerendering()V
.end method

.method public abstract enablePrerendering()V
.end method

.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/mobi/KRFError;
        }
    .end annotation
.end method

.method public abstract isBackAvailable()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract navigateBack(I)V
.end method

.method public abstract navigateToPosition(I)V
.end method

.method public abstract setOrientation(I)V
.end method
