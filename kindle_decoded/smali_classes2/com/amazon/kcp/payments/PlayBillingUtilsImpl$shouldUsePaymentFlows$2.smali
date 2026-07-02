.class final Lcom/amazon/kcp/payments/PlayBillingUtilsImpl$shouldUsePaymentFlows$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayBillingUtilsImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl$shouldUsePaymentFlows$2;->this$0:Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl$shouldUsePaymentFlows$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 5

    .line 56
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KINDLE_ANDROID_APPCORE_PLAY_STORE_BILLING_363064"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "T2"

    :goto_0
    const-string v1, "Utils.getFactory().kindl\u2026gger ?: DEFAULT_TREATMENT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl$shouldUsePaymentFlows$2;->this$0:Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    .line 59
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v3

    .line 60
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isPlayStoreBuild()Z

    move-result v4

    .line 58
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;->getShouldUsePaymentFlows$KindleReaderLibrary_release(ZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method
