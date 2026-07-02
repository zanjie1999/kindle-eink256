.class public interface abstract Lcom/amazon/nwstd/replica/IReplicaPage;
.super Ljava/lang/Object;
.source "IReplicaPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;,
        Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;
    }
.end annotation


# virtual methods
.method public abstract addLoadingFinishedListener(Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;)V
.end method

.method public abstract addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V
.end method

.method public abstract computeMargins(II)Landroid/graphics/RectF;
.end method

.method public abstract destroy()V
.end method

.method public abstract getBookmarkablePage()Lcom/amazon/nwstd/replica/IBookmarkablePage;
.end method

.method public abstract getMagnifiablePage()Lcom/amazon/nwstd/replica/IMagnifiablePage;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;
.end method

.method public abstract hasFinishedLoading()Z
.end method

.method public abstract onHide()V
.end method

.method public abstract onShow()V
.end method

.method public abstract performDoubleTap(FF)Z
.end method

.method public abstract performSingleTap(FF)Z
.end method

.method public abstract setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V
.end method

.method public abstract waitForInit()V
.end method
