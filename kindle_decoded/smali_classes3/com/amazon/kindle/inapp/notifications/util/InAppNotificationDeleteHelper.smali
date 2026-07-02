.class public final Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "InAppNotificationDeleteHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;


# direct methods
.method public constructor <init>(IILcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    iput-object p3, p0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;->listener:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getNotificationItemForeground()Landroid/widget/RelativeLayout;

    move-result-object p1

    .line 30
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;->listener:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;

    invoke-interface {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;->isItemViewSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    check-cast p3, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-virtual {p3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getNotificationItemForeground()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 37
    invoke-virtual {p3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getNotificationItemBackground()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p6, v1, :cond_2

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 40
    invoke-virtual {p3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getLeftDeleteLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    int-to-float v2, v1

    const/16 v4, 0x8

    cmpg-float v5, p4, v2

    if-gez v5, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 41
    invoke-virtual {p3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getRightDeleteLayout()Landroid/widget/RelativeLayout;

    move-result-object p3

    cmpl-float v0, p4, v2

    if-lez v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    :cond_2
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    check-cast p3, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-virtual {p3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getNotificationItemForeground()Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 24
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object v0

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float v4, p4, p3

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;->listener:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;->onSwipeDelete(I)V

    .line 17
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;->listener:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    return-void
.end method
