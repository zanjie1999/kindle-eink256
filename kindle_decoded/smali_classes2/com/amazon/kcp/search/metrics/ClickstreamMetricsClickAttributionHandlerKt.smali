.class public final Lcom/amazon/kcp/search/metrics/ClickstreamMetricsClickAttributionHandlerKt;
.super Ljava/lang/Object;
.source "ClickstreamMetricsClickAttributionHandler.kt"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-class v0, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsClickAttributionHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(Clickstream\u2026utionHandler::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsClickAttributionHandlerKt;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLOG_TAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsClickAttributionHandlerKt;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
