.class public final Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;
.super Ljava/lang/Object;
.source "SyncAnimationHelper.kt"


# instance fields
.field private syncFinishAnimationInProgress:Z

.field private final syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

.field private final syncMenuItemBackgroundColor:I

.field private final syncMenuTextColor:I

.field private final syncStatusMessageTextColor:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/setting/item/sync/SyncItemView;)V
    .locals 4

    const-string v0, "syncItemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "syncItemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kcp/more/R$drawable;->ic_nav_sync_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    .line 48
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncItemTitleView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v0, "syncItemView.syncItemTitleView.textColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncMenuTextColor:I

    .line 54
    iget-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncStatusMessageView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v0, "syncItemView.syncStatusMessageView.textColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncStatusMessageTextColor:I

    .line 56
    iget-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncMenuItem()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kcp/more/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 57
    :goto_0
    iput p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncMenuItemBackgroundColor:I

    return-void
.end method

.method public static final synthetic access$getSyncItemView$p(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;)Lcom/amazon/kindle/setting/item/sync/SyncItemView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    return-object p0
.end method

.method public static final synthetic access$setSyncFinishAnimationInProgress$p(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncFinishAnimationInProgress:Z

    return-void
.end method

.method private final getFinishedBackgroundColorOfSyncMenu(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)I
    .locals 2

    .line 162
    sget-object v0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a finished status"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    :goto_0
    sget p1, Lcom/amazon/kcp/more/R$color;->more_menu_item_sync_failure_color:I

    goto :goto_1

    .line 163
    :cond_2
    sget p1, Lcom/amazon/kcp/more/R$color;->more_menu_item_sync_success_color:I

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "syncItemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private final showFinishedAnimation(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V
    .locals 11

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 99
    iget-boolean v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncFinishAnimationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncMenuItem()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncFinishAnimationInProgress:Z

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->getFinishedBackgroundColorOfSyncMenu(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)I

    move-result p1

    .line 113
    iget-object v2, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v2}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncMenuItem()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 114
    iget v5, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncMenuItemBackgroundColor:I

    aput v5, v4, v1

    aput p1, v4, v0

    const-string p1, "backgroundColor"

    .line 113
    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 115
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v7, p1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-string p1, "syncMenuItemBackgroundAnimation"

    .line 116
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x12c

    int-to-long v4, p1

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    iget-object v2, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "syncItemView.context"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    sget v6, Lcom/amazon/kcp/more/R$color;->more_menu_item_sync_status_message_animation_color:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 122
    iget-object v6, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v6}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncItemTitleView()Landroid/widget/TextView;

    move-result-object v6

    new-array v8, v3, [I

    .line 123
    iget v9, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncMenuTextColor:I

    aput v9, v8, v1

    aput v2, v8, v0

    const-string v9, "textColor"

    .line 122
    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 124
    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v10, v6}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-string v6, "syncMenuTextAnimation"

    .line 125
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    iget-object v6, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v6}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncStatusMessageView()Landroid/widget/TextView;

    move-result-object v6

    new-array v3, v3, [I

    .line 129
    iget v8, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncStatusMessageTextColor:I

    aput v8, v3, v1

    aput v2, v3, v0

    .line 128
    invoke-static {v6, v9, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-string v1, "syncStatusMessageAnimation"

    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .line 135
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 136
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 137
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 138
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 141
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v1, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;

    move-object v5, v1

    move-object v6, p0

    move-object v9, v10

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$showFinishedAnimation$1;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/TransitionDrawable;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    const/4 v0, 0x3

    int-to-long v2, v0

    .line 150
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 141
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final showInSyncingAnimation()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/more/R$anim;->rotate_sync_icon:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->syncItemView:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final showAnimation(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V
    .locals 2

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->showFinishedAnimation(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->showInSyncingAnimation()V

    :goto_0
    return-void
.end method
