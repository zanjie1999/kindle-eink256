.class public final Lcom/amazon/kcp/payments/InstallationSourceMetricsKt;
.super Ljava/lang/Object;
.source "InstallationSourceMetrics.kt"


# static fields
.field private static final FLAVOR:Ljava/lang/String; = "flavor"

.field private static final INSTALLATION_SOURCE:Ljava/lang/String; = "installation_source"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "InstallationSourcePrefs"

.field private static final TAG:Ljava/lang/String;

.field private static final WAS_METRIC_REPORTED_KEY:Ljava/lang/String; = "WasMetricReported"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-class v0, Lcom/amazon/kcp/payments/InstallationSourceMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(Installatio\u2026ourceMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/payments/InstallationSourceMetricsKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/payments/InstallationSourceMetricsKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
