.class public final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;
.super Landroidx/fragment/app/Fragment;
.source "DisclosureFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private backView:Landroid/widget/TextView;

.field private backViewText:Ljava/lang/CharSequence;

.field private contentView:Landroid/view/ViewGroup;

.field private delegate:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "backViewText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->backViewText:Ljava/lang/CharSequence;

    .line 59
    const-class p1, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(DisclosureFragment::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->contentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget p3, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_disclosure_fragment_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->backView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;

    .line 94
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->_$_clearFindViewByIdCache()V

    return-void

    :cond_0
    const-string v0, "backView"

    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget p2, Lcom/amazon/kindle/krl/R$id;->fragment_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.fragment_title)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->title:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget p2, Lcom/amazon/kindle/krl/R$id;->back_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.back_view)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->backView:Landroid/widget/TextView;

    const/4 v0, 0x0

    const-string v2, "backView"

    if-eqz p2, :cond_8

    .line 73
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->backViewText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_accessibility_back_button_description:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->backViewText:Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "java.lang.String.format(this, *args)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move-object v1, p2

    .line 75
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->backView:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->backView:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewCreated$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget p2, Lcom/amazon/kindle/krl/R$id;->content_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 80
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->contentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    .line 83
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    :goto_1
    invoke-virtual {p1, v0, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.core.widget.NestedScrollView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setContentView(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->contentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setDelegate(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;

    return-void
.end method
