.class final Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FalkorTOSJavascriptInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;
    .locals 3

    .line 47
    new-instance v0, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    invoke-static {v2}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->access$getPlayBillingUtils$p(Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;)Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;->invoke()Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;

    move-result-object v0

    return-object v0
.end method
