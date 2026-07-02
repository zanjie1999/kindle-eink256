.class public final Lcom/amazon/falkor/FalkorPlayBillingUtils;
.super Ljava/lang/Object;
.source "FalkorPlayBillingUtils.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/payment/PlayBillingUtils;


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final wrappedBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/FalkorPlayBillingUtils;->wrappedBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    iput-object p2, p0, Lcom/amazon/falkor/FalkorPlayBillingUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private final isFromPaymentDisabledStore(Landroid/content/Context;)Z
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Lcom/amazon/falkor/FalkorPlayBillingUtilsKt;->access$getPaymentDisabledStores$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public shouldUsePaymentFlows()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPlayBillingUtils;->wrappedBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPlayBillingUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "sdk.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/falkor/FalkorPlayBillingUtils;->isFromPaymentDisabledStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorDebugUtils;->isFalkorGPlayPaymentFlowsDisabledByWeblab()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
