.class public final Lcom/amazon/kindle/setting/item/sync/SyncItemView;
.super Landroid/widget/LinearLayout;
.source "SyncItemView.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/UpdatableView;


# instance fields
.field private animationHelper:Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

.field public syncIcon:Landroid/widget/ImageView;

.field private syncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

.field public syncItemTitleView:Landroid/widget/TextView;

.field public syncMenuItem:Landroid/view/View;

.field public syncStatusMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$updateSyncStatusMessageView(Lcom/amazon/kindle/setting/item/sync/SyncItemView;Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->updateSyncStatusMessageView(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/lang/String;)V

    return-void
.end method

.method private final updateSyncStatusMessageView(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/lang/String;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncStatusMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 119
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 121
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_0
    sget-object p2, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_SUCCESS:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_FINISHED_WITH_ERROR:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_CANCELLED:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    if-ne p1, p2, :cond_2

    .line 128
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Utils.getFactory().context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 129
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_sync_message_sync_complete:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getFactory().conte\u2026nc_message_sync_complete)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncMenuItem:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "syncMenuItem"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "syncStatusMessageView"

    .line 118
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getAnimationHelper()Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->animationHelper:Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

    return-object v0
.end method

.method public final getSyncIcon()Landroid/widget/ImageView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "syncIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSyncItem$MoreModule_release()Lcom/amazon/kindle/setting/item/sync/SyncItem;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

    return-object v0
.end method

.method public final getSyncItemTitleView()Landroid/widget/TextView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncItemTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "syncItemTitleView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSyncMenuItem()Landroid/view/View;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncMenuItem:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "syncMenuItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSyncStatusMessageView()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncStatusMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "syncStatusMessageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    sget v0, Lcom/amazon/kcp/more/R$id;->sync_item_id:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.sync_item_id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncMenuItem:Landroid/view/View;

    .line 62
    sget v0, Lcom/amazon/kcp/more/R$id;->sync_item_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.sync_item_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncIcon:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/amazon/kcp/more/R$id;->sync_item_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.sync_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncItemTitleView:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/amazon/kcp/more/R$id;->sync_item_status:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.sync_item_status)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncStatusMessageView:Landroid/widget/TextView;

    return-void
.end method

.method public onItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    check-cast p1, Lcom/amazon/kindle/setting/item/sync/SyncItem;

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->refresh()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->refresh()V

    return-void
.end method

.method public final refresh()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItem;->getSyncStatus()Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v1}, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->hasConsumed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v2, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncItemView;Lcom/amazon/kindle/setting/item/sync/SyncStatus;Lcom/amazon/kindle/setting/item/sync/SyncItem;)V

    .line 94
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const-string v1, "threadPoolManager"

    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setAnimationHelper(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->animationHelper:Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

    return-void
.end method

.method public final setSyncIcon(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setSyncItem$MoreModule_release(Lcom/amazon/kindle/setting/item/sync/SyncItem;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

    return-void
.end method

.method public final setSyncItemTitleView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncItemTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public final setSyncMenuItem(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncMenuItem:Landroid/view/View;

    return-void
.end method

.method public final setSyncStatusMessageView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->syncStatusMessageView:Landroid/widget/TextView;

    return-void
.end method
