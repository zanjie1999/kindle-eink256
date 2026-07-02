.class public final Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;
.super Ljava/lang/Object;
.source "AppInternalErrorGranularDetailMetricsEmitter.kt"

# interfaces
.implements Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;-><init>()V

    sput-object v0, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V
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

    .line 18
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "UNKNOWN"

    :goto_0
    const-string p3, "bookId?.serializedForm ?: \"UNKNOWN\""

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "bookId"

    invoke-virtual {v0, p3, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string p1, "APP_INTERNAL_ERROR_BREAKDOWN"

    .line 21
    invoke-static {p1, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/metrics/DownloadMetricsPayload;)V

    return-void
.end method
