.class public final Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterfaceLazyProxy;
.super Ljava/lang/Object;
.source "FalkorTOSJavascriptInterface.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/store/StoreJavascriptInterfaceProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJavascriptInterface()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterfaceLazyProxy;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getJavascriptInterface()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterfaceLazyProxy;->getJavascriptInterface()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterfaceLazyProxy;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FalkorTOSAPIs"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final openNativeBottomSheet(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->Companion:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;

    invoke-virtual {v0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;->getInstance()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->openNativeBottomSheet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final triggerNativeTokenPurchaseBottomsheet(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->Companion:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;

    invoke-virtual {v0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;->getInstance()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->triggerNativeTokenPurchaseBottomsheet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
