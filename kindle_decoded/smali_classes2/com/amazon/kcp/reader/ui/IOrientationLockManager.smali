.class public interface abstract Lcom/amazon/kcp/reader/ui/IOrientationLockManager;
.super Ljava/lang/Object;
.source "IOrientationLockManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract initialize(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/view/View;Z)V
.end method

.method public abstract isOrientationLockVisible()Z
.end method

.method public abstract isPointInOrientationLock(II)Z
.end method

.method public abstract onOrientationLockClick()Z
.end method

.method public abstract refreshLayout()V
.end method

.method public abstract setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOrientationLockTemporarilyVisible(ZZ)V
.end method

.method public abstract shouldUseOrientationListener()Z
.end method
