.class final Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AffinityViewHolder"
.end annotation


# instance fields
.field public affinityButton:Landroid/widget/LinearLayout;

.field public affinityButtonIcon:Landroid/widget/ImageView;

.field public affinityButtonTextView:Landroid/widget/TextView;

.field public affinityHintTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAffinityButton$EndActionsAndroidModule_lib_release()Landroid/widget/LinearLayout;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "affinityButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAffinityButtonIcon$EndActionsAndroidModule_lib_release()Landroid/widget/ImageView;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityButtonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "affinityButtonIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAffinityButtonTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "affinityButtonTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAffinityHintTextView$EndActionsAndroidModule_lib_release()Landroid/widget/TextView;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "affinityHintTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setAffinityButton$EndActionsAndroidModule_lib_release(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityButton:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setAffinityButtonIcon$EndActionsAndroidModule_lib_release(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityButtonIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setAffinityButtonTextView$EndActionsAndroidModule_lib_release(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityButtonTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setAffinityHintTextView$EndActionsAndroidModule_lib_release(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$AffinityViewHolder;->affinityHintTextView:Landroid/widget/TextView;

    return-void
.end method
