.class public Lcom/amazon/falkor/download/TokenBalanceDownloadManager;
.super Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;
.source "FalkorDownloadManagers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playBillingUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V

    return-void
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 157
    const-class v0, Lcom/amazon/falkor/download/TokenBalanceDownloadManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object p1, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-virtual {p1}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getTokenBalanceAPIUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDownloadFailed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/falkor/event/TokenBalanceDownloadFinishedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/TokenBalanceDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onDownloadSuccessful(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/falkor/event/TokenBalanceDownloadFinishedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/TokenBalanceDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
