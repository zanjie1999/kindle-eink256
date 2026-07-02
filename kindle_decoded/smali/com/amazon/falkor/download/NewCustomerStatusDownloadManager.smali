.class public final Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;
.super Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;
.source "FalkorDownloadManagers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;Lcom/amazon/falkor/FalkorPluginPrefs;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playBillingUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falkorPrefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V

    iput-object p3, p0, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Boolean;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    invoke-interface {v0}, Lcom/amazon/falkor/FalkorPluginPrefs;->getIsExistingFalkorCustomerStatusCached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_0
    invoke-super {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->getData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 181
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    invoke-interface {v0}, Lcom/amazon/falkor/FalkorPluginPrefs;->getIsExistingFalkorCustomerStatusCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    goto :goto_0

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 183
    const-class v0, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;

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

    .line 179
    sget-object p1, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-virtual {p1}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getNewCustomerStatusAPIUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDownloadFailed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/falkor/event/NewCustomerStatusDownloadFinishedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/NewCustomerStatusDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onDownloadSuccessful(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->getData()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/amazon/falkor/download/NewCustomerStatusDownloadManager;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    invoke-interface {v0}, Lcom/amazon/falkor/FalkorPluginPrefs;->setIsExistingFalkorCustomerStatusCached()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/falkor/event/NewCustomerStatusDownloadFinishedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/NewCustomerStatusDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
