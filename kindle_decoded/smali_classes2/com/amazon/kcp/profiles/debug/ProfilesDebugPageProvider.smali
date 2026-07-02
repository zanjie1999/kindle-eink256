.class public final Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "ProfilesDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final setWeblabStatus(Landroid/view/ViewGroup;)V
    .locals 2

    .line 32
    sget v0, Lcom/amazon/kcp/profiles/R$id;->profile_weblab_status:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo v0, "weblabStatusView"

    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->getContentSharingWeblabTreatment()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "T1"

    goto :goto_0

    :cond_0
    const-string v0, "C"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-static {}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->getContentSharingWeblabTreatment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/profiles/R$color;->fr_green_500:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/profiles/R$color;->badge_fill_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 34
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Books Profiles Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    sget v1, Lcom/amazon/kcp/profiles/R$layout;->profiles_debug_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    sget v1, Lcom/amazon/kcp/profiles/R$id;->content_sharing_switch:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    const-string v2, "contentSharingSwitch"

    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->isContentSharingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 22
    new-instance v2, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider$getView$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider$getView$1;-><init>(Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;->setWeblabStatus(Landroid/view/ViewGroup;)V

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
