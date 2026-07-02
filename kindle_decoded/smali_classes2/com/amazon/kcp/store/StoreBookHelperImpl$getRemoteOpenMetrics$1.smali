.class public final Lcom/amazon/kcp/store/StoreBookHelperImpl$getRemoteOpenMetrics$1;
.super Ljava/lang/Object;
.source "StoreBookHelperImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreBookHelperImpl;->getRemoteOpenMetrics()Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/store/StoreBookHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DownloadAndOpen"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
