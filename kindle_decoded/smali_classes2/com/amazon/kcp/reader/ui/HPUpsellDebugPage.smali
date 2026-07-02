.class final Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "HushpuppyUpsellDetector.kt"


# instance fields
.field private final clickListener:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;

.field private final page:Landroid/view/View;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 259
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->hp_upsell_debug_page:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    const-string v0, "HPUpsellSuppression"

    .line 260
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->prefs:Landroid/content/SharedPreferences;

    .line 262
    new-instance p1, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;-><init>(Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->clickListener:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;

    .line 291
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "WeblabOverride"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_0
    const/4 p1, 0x1

    const-string v0, "page"

    if-nez v3, :cond_1

    .line 293
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/amazon/kindle/krl/R$id;->override_disabled:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const-string v2, "page.override_disabled"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/amazon/kindle/krl/R$id;->always_hide:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const-string v2, "page.always_hide"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/amazon/kindle/krl/R$id;->always_show:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const-string v2, "page.always_show"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 298
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/amazon/kindle/krl/R$id;->override_disabled:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->clickListener:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/amazon/kindle/krl/R$id;->always_show:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->clickListener:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/amazon/kindle/krl/R$id;->always_hide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->clickListener:Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage$clickListener$1;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getPrefs$p(Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;)Landroid/content/SharedPreferences;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "HP Upsell Disable Override"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/HPUpsellDebugPage;->page:Landroid/view/View;

    const-string v1, "page"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
