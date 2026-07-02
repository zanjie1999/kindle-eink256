.class public final Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;
.super Ljava/lang/Object;
.source "DeleteContentMetricsUtils.kt"


# static fields
.field private static final DELETE_FROM_LIBRARY_ACTION:Ljava/lang/String; = "DeleteFromLibraryActionMetric"

.field private static final DELETE_FROM_LIBRARY_PRESENT_ERROR_DIALOG:Ljava/lang/String; = "DeleteFromLibraryPresentErrorDialog"

.field private static final DELETE_FROM_LIBRARY_UI:Ljava/lang/String; = "DeleteFromLibraryUI"

.field private static final DELETE_FROM_LIBRARY_UNEXPECTED_ERROR:Ljava/lang/String; = "DeleteFromLibraryUnexpectedError"

.field private static final DELETE_FROM_LIBRARY_WEB_REQUEST:Ljava/lang/String; = "DeleteFromLibraryWebRequest"


# direct methods
.method public static final reportErrorDialogMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/deletecontent/api/DeleteContentError;)V
    .locals 2

    const-string v0, "metricsManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteFromLibraryPresentErrorDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;->getErrorCode()Lcom/amazon/kindle/deletecontent/api/DeleteContentErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DeleteFromLibraryActionMetric"

    .line 53
    invoke-interface {p0, v1, p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public static final reportUIMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "metricsManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteFromLibraryUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DeleteFromLibraryActionMetric"

    .line 43
    invoke-interface {p0, v1, p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public static final reportUnexpectedRequestErrorMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "metricsManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteFromLibraryUnexpectedError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DeleteFromLibraryActionMetric"

    .line 63
    invoke-interface {p0, v1, p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public static final reportWebRequestMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "metricsManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteFromLibraryWebRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DeleteFromLibraryActionMetric"

    .line 33
    invoke-interface {p0, v1, p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public static final serialize(Lcom/amazon/kindle/deletecontent/dialog/ContentData;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$serialize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    instance-of v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    if-eqz v0, :cond_0

    .line 72
    move-object v1, p0

    check-cast v1, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    invoke-virtual {v1}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 75
    invoke-interface {p0}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getOriginType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "originType"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isArchivable"

    .line 76
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    invoke-interface {p0}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getAsin()Ljava/lang/String;

    move-result-object v0

    const-string v3, "asin"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "parentAsin"

    .line 78
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-interface {p0}, Lcom/amazon/kindle/deletecontent/dialog/ContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contentType"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JSONObject().apply {\n   \u2026pe.name)\n    }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
