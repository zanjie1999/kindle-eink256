.class public final Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;
.super Ljava/lang/Object;
.source "DeleteContentClient.kt"

# interfaces
.implements Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

.field private static deleteContentApiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

.field private static metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private static threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

    invoke-direct {v0}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;-><init>()V

    sput-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->INSTANCE:Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMetricsManager$p(Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 0

    .line 36
    sget-object p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "metricsManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public deleteBookWithASINDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asinDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 52
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "DeletionRequest"

    invoke-static {v0, v2}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportWebRequestMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/amazon/kindle/deletecontent/api/DeleteAsyncTask;

    new-instance v3, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$deleteBookWithASINDetails$1;

    invoke-direct {v3, p2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$deleteBookWithASINDetails$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 56
    sget-object p2, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->deleteContentApiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    if-eqz p2, :cond_0

    .line 53
    invoke-direct {v2, p1, v3, p2}, Lcom/amazon/kindle/deletecontent/api/DeleteAsyncTask;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const-string p1, "deleteContentApiClientHelper"

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "threadPoolManager"

    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "metricsManager"

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public final initialize(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 1

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webRequestManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadPoolManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sput-object p4, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    .line 46
    sput-object p5, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 47
    new-instance p4, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/webservices/IWebRequestManager;)V

    sput-object p4, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->deleteContentApiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    return-void
.end method

.method public refundEligibilityCheckWithASINDetails(Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asinDetail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "RefundCheckRequest"

    invoke-static {v0, v2}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportWebRequestMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;

    new-instance v3, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$refundEligibilityCheckWithASINDetails$1;

    invoke-direct {v3, p2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient$refundEligibilityCheckWithASINDetails$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 65
    sget-object p2, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->deleteContentApiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    if-eqz p2, :cond_0

    .line 62
    invoke-direct {v2, p1, v3, p2}, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;-><init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    const-string p1, "deleteContentApiClientHelper"

    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "threadPoolManager"

    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "metricsManager"

    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
