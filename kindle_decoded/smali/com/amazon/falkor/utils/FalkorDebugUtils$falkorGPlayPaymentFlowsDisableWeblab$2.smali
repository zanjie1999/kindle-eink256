.class final Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FalkorDebugUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/utils/FalkorDebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 2

    .line 17
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    const-string v1, "KINDLE_ANDROID_FALKOR_GPLAY_PAYMENT_FLOWS_DISABLE_389976"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;->invoke()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    return-object v0
.end method
