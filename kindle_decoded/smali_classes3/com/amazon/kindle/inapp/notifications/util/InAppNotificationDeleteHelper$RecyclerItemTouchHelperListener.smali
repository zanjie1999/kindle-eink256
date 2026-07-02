.class public interface abstract Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;
.super Ljava/lang/Object;
.source "InAppNotificationDeleteHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecyclerItemTouchHelperListener"
.end annotation


# virtual methods
.method public abstract isItemViewSwipeEnabled()Z
.end method

.method public abstract onSwipeDelete(I)V
.end method

.method public abstract onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
.end method
