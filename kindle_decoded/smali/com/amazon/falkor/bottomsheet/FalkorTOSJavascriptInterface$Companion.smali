.class public final Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;
.super Ljava/lang/Object;
.source "FalkorTOSJavascriptInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;
    .locals 3

    .line 88
    invoke-static {}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->access$getInstance$cp()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->isSDKInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorDebugUtils;->isFalkorTOSAPIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/amazon/falkor/FalkorPlayBillingUtils;

    const-class v2, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-direct {v1, v2, v0}, Lcom/amazon/falkor/FalkorPlayBillingUtils;-><init>(Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 91
    new-instance v2, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    invoke-direct {v2, v0, v1}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V

    invoke-static {v2}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->access$setInstance$cp(Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->access$getInstance$cp()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    move-result-object v0

    return-object v0
.end method
