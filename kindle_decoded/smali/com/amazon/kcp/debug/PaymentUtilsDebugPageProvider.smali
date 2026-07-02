.class public final Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "PaymentUtilsDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const-string/jumbo p2, "switch"

    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<b><big>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</big></b><br/><small>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</small><br/>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p1, p5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 45
    invoke-virtual {p1, p6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Payment Utils"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 8

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 26
    sget v1, Lcom/amazon/kindle/krl/R$layout;->payment_utils_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    sget v3, Lcom/amazon/kindle/krl/R$id;->force_iphone_deviceid:I

    .line 32
    sget-object v1, Lcom/amazon/kcp/payments/PlayBillingDebugUtils;->INSTANCE:Lcom/amazon/kcp/payments/PlayBillingDebugUtils;

    invoke-virtual {v1}, Lcom/amazon/kcp/payments/PlayBillingDebugUtils;->isForceIphoneStoreEnabled()Z

    move-result v6

    .line 33
    new-instance v7, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider$getView$1;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider$getView$1;-><init>(Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;)V

    const-string v4, "Force iPhone store"

    const-string v5, "Enabling this will cause this app to report itself as an iPhone app to store, causing store to render non-payment pages."

    move-object v1, p0

    move-object v2, v0

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
