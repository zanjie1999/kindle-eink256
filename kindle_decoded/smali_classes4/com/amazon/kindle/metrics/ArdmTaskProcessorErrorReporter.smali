.class public final Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;
.super Ljava/lang/Object;
.source "ArdmTaskProcessorErrorReporter.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;-><init>()V

    sput-object v0, Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;->INSTANCE:Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reportError(Lcom/amazon/kindle/metrics/ProcessorErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;-><init>()V

    const-string v1, "error_context"

    .line 17
    invoke-virtual {v0, v1, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "UNKNOWN"

    :goto_0
    const-string p2, "bookId"

    .line 18
    invoke-virtual {v0, p2, p3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 19
    invoke-virtual {p1}, Lcom/amazon/kindle/metrics/ProcessorErrorType;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string p1, "ARDM_INTERNAL_ERROR_BREAKDOWN"

    .line 21
    invoke-static {p1, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/metrics/DownloadMetricsPayload;)V

    return-void
.end method
