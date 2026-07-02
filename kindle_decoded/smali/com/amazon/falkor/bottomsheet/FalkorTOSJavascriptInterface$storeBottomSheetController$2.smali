.class final Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeBottomSheetController$2;
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
        "Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeBottomSheetController$2;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;
    .locals 2

    .line 48
    new-instance v0, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeBottomSheetController$2;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeBottomSheetController$2;->invoke()Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;

    move-result-object v0

    return-object v0
.end method
