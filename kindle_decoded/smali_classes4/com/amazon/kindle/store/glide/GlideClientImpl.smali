.class public final Lcom/amazon/kindle/store/glide/GlideClientImpl;
.super Ljava/lang/Object;
.source "GlideClientImpl.java"


# static fields
.field private static final GLIDE_ACQUISITION_BORROW_CALLED:Ljava/lang/String; = "GlideAcquisitionBorrowCalled"

.field private static final GLIDE_ACQUISITION_BUY_CALLED:Ljava/lang/String; = "GlideAcquisitionBuyCalled"

.field private static final GLIDE_BATCH_GET_OFFER_CALL_CALLED:Ljava/lang/String; = "GlideBatchGetOfferCallCalled"

.field private static final GLIDE_RETURN_ASIN_CALLED:Ljava/lang/String; = "GlideReturnAsinCalled"

.field private static final GLIDE_RETURN_OFFER_CALLED:Ljava/lang/String; = "GlideReturnOfferCalled"

.field private static final GLIDE_SINGLE_GET_OFFER_CALL_CALLED:Ljava/lang/String; = "GlideSingleGetOfferCallCalled"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public borrowOfferFromAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
    .locals 7

    .line 82
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlideAcquisitionBorrowCalled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v6, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;

    iget-object v1, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    .line 85
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCsrfToken()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    .line 85
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public buyOfferFromAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
    .locals 7

    .line 70
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlideAcquisitionBuyCalled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v6, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;

    iget-object v1, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    .line 73
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCsrfToken()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    .line 73
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/GlideClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideBatchGetOfferCallCalled_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getOffersForAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .locals 4

    .line 49
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/GlideClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideSingleGetOfferCallCalled_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public returnAsin(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 4

    .line 105
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/glide/GlideClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlideReturnAsinCalled_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    .line 108
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public returnOfferForAsin(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 11

    move-object v0, p0

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/store/glide/GlideClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlideReturnOfferCalled_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v10, Lcom/amazon/kindle/store/glide/task/ReturnOfferForAsinTask;

    iget-object v4, v0, Lcom/amazon/kindle/store/glide/GlideClientImpl;->clientId:Ljava/lang/String;

    move-object v2, v10

    move-object v3, p1

    move-object/from16 v5, p5

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/store/glide/task/ReturnOfferForAsinTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    .line 98
    invoke-interface {v1, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
