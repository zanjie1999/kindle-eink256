.class public final Lcom/amazon/kcp/debug/StoreDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "StoreDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/StoreDebugPageProvider;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final setUpEditTextGroup(Landroid/view/ViewGroup;IILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 91
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 93
    invoke-virtual {p1, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setUpOverrideSwitch(Landroid/view/ViewGroup;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 4

    .line 75
    sget v0, Lcom/amazon/kindle/krl/R$id;->store_override_switch:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 76
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->getStoreDomainOverridden()Z

    move-result v1

    const-string/jumbo v2, "switch"

    .line 77
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 78
    sget v2, Lcom/amazon/kindle/krl/R$id;->store_domain_override_edittext:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "container.findViewById<E\u2026domain_override_edittext)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 79
    sget v2, Lcom/amazon/kindle/krl/R$id;->store_domain_override_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "container.findViewById<B\u2026e_domain_override_button)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    sget v2, Lcom/amazon/kindle/krl/R$id;->store_weblabs_override_edittext:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "container.findViewById<E\u2026eblabs_override_edittext)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 81
    sget v2, Lcom/amazon/kindle/krl/R$id;->store_weblabs_override_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "container.findViewById<B\u2026_weblabs_override_button)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private final setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string p2, "button"

    .line 99
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 103
    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Store Utils"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 26
    sget v1, Lcom/amazon/kindle/krl/R$layout;->store_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    new-instance v1, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;-><init>(Lcom/amazon/kcp/debug/StoreDebugPageProvider;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->setUpOverrideSwitch(Landroid/view/ViewGroup;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    sget v3, Lcom/amazon/kindle/krl/R$id;->store_domain_override_edittext:I

    .line 44
    sget v4, Lcom/amazon/kindle/krl/R$id;->store_domain_override_button:I

    .line 45
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->getStoreDomain()Ljava/lang/String;

    move-result-object v5

    const-string v1, "DebugUtils.getStoreDomain()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v6, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;

    invoke-direct {v6, p0, v0}, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;-><init>(Lcom/amazon/kcp/debug/StoreDebugPageProvider;Landroid/view/ViewGroup;)V

    move-object v1, p0

    move-object v2, v0

    .line 43
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->setUpEditTextGroup(Landroid/view/ViewGroup;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 54
    sget v3, Lcom/amazon/kindle/krl/R$id;->store_weblabs_override_edittext:I

    .line 55
    sget v4, Lcom/amazon/kindle/krl/R$id;->store_weblabs_override_button:I

    .line 56
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->getStoreWeblabs()Ljava/lang/String;

    move-result-object v5

    const-string v1, "DebugUtils.getStoreWeblabs()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v6, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$3;

    invoke-direct {v6, p0, v0}, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$3;-><init>(Lcom/amazon/kcp/debug/StoreDebugPageProvider;Landroid/view/ViewGroup;)V

    move-object v1, p0

    .line 54
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->setUpEditTextGroup(Landroid/view/ViewGroup;IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 65
    sget v3, Lcom/amazon/kindle/krl/R$id;->store_set_force_dark:I

    .line 66
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isStoreForceDarkModeEnabled()Z

    move-result v5

    .line 67
    sget-object v6, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$4;->INSTANCE:Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$4;

    const-string v4, "Force Dark Store Webview"

    .line 65
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
