.class public final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;
.super Ljava/lang/Object;
.source "ManifestDownloadJob.kt"

# interfaces
.implements Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestStatusTracker;,
        Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;,
        Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final delegate:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;

.field private final manifestRequestFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
            ">;"
        }
    .end annotation
.end field

.field private metrics:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;

.field private final params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

.field private final request$delegate:Lkotlin/Lazy;

.field private result:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;

.field private state:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

.field private final threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

.field private final webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->Companion:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;

    .line 56
    const-class v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadUtils.getDownloa\u2026tDownloadJob::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;Lcom/amazon/foundation/internal/IThreadPoolManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "+",
            "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
            ">;",
            "Lcom/amazon/kindle/webservices/IWebRequestManager;",
            "Lcom/amazon/kindle/network/INetworkService;",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;",
            "Lcom/amazon/foundation/internal/IThreadPoolManager;",
            ")V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestRequestFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webRequestManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadPoolManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->manifestRequestFactory:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    iput-object p4, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->networkService:Lcom/amazon/kindle/network/INetworkService;

    iput-object p5, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->delegate:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;

    iput-object p6, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    .line 59
    sget-object p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->INITIAL:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->state:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    .line 62
    new-instance p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;-><init>(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->metrics:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    .line 68
    new-instance p1, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$request$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$request$2;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->request$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;Lcom/amazon/foundation/internal/IThreadPoolManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 54
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p6

    const-string p7, "ThreadPoolManager.getInstance()"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;-><init>(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;Lcom/amazon/foundation/internal/IThreadPoolManager;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final callDelegateIfNotCancelled(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->CANCELLED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    if-eq v0, v1, :cond_0

    .line 214
    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->COMPLETE:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    iput-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->state:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getDelegate()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;->downloadJobFinished(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->COMPLETE:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->CANCELLED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iput-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->state:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    .line 259
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDelegate()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->delegate:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;

    return-object v0
.end method

.method public final getManifestRequestFactory()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lcom/amazon/kindle/webservices/IManifestWebRequest;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->manifestRequestFactory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->metrics:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    return-object v0
.end method

.method public getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    return-object v0
.end method

.method public getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->request$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IManifestWebRequest;

    return-object v0
.end method

.method public getResult()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->result:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "result"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->state:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    return-object v0
.end method

.method public final handleManifestResponse(Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V
    .locals 9

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->copy$default(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->metrics:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    .line 178
    invoke-interface {p3}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getContentSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 179
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    int-to-long v0, v0

    invoke-interface {p3, v0, v1}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->setContentSize(J)V

    :cond_0
    const-string v0, "request.errorDescriber"

    if-eqz p2, :cond_1

    .line 183
    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getResponseStatus()Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->getHttpCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1

    .line 184
    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    invoke-interface {p3}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p3, p2, p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;-><init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-interface {p3}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 187
    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    invoke-interface {p3}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p3, p2, p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;-><init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->setDownloadDoneTime(J)V

    .line 191
    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;-><init>(Ljava/lang/String;)V

    .line 194
    :goto_0
    iput-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->result:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;

    return-void
.end method

.method public final handleRequestComplete()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getResult()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->callDelegateIfNotCancelled(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V

    return-void
.end method

.method public final handleRequestFailure(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 2

    const-string v0, "errorDescriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->result:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;-><init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/webservices/HttpResponseProperties;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->result:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getResult()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->callDelegateIfNotCancelled(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V

    return-void
.end method

.method public final onConnectionEstablished()V
    .locals 11

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->setHttpEndTime(J)V

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->copy$default(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->metrics:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    return-void
.end method

.method public declared-synchronized start()Z
    .locals 5

    monitor-enter p0

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->INITIAL:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    if-eq v0, v1, :cond_0

    .line 221
    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() called on a manifest job with a status of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 222
    monitor-exit p0

    return v0

    .line 226
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->Companion:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;->getXAdpCallAfter()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 229
    sget-object v2, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleeping for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms because server set x-adp-call-after header for bookId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->WAITING_TO_START:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    iput-object v2, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->state:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    .line 231
    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    new-instance v3, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$start$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$start$1;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V

    new-instance v4, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$sam$java_lang_Runnable$0;

    invoke-direct {v4, v3}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v0, v1, v3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const-string v1, "threadPoolManager.schedu\u2026e, TimeUnit.MILLISECONDS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->startInternal$com_amazon_kindle_dm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x1

    .line 235
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startInternal$com_amazon_kindle_dm()V
    .locals 11

    .line 240
    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enqueuing manifest webrequest for BookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestStatusTracker;

    new-instance v2, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$1;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V

    new-instance v3, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$2;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$2;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestStatusTracker;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 242
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->networkService:Lcom/amazon/kindle/network/INetworkService;

    new-instance v4, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$3;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$3;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V

    new-instance v5, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$4;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$startInternal$4;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;)V

    .line 242
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$DeliveryManifestResponseHandler;-><init>(Lcom/amazon/kindle/webservices/IManifestWebRequest;Lcom/amazon/kindle/network/INetworkService;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 246
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->setRequestEnqueueTime(J)V

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->copy$default(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->metrics:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    .line 249
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 250
    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->STARTED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    iput-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->state:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    return-void
.end method
