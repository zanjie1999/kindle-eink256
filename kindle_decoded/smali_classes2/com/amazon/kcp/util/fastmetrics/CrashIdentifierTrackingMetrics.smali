.class public final Lcom/amazon/kcp/util/fastmetrics/CrashIdentifierTrackingMetrics;
.super Ljava/lang/Object;
.source "CrashIdentifierTrackingMetrics.kt"


# static fields
.field private static final FIELD_KEY_CRASH_IDENTIFIER:Ljava/lang/String; = "crash_identifier"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/CrashIdentifierTrackingMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/CrashIdentifierTrackingMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportCrashIdentifier(Ljava/lang/String;)V
    .locals 3

    const-string v0, "crashIdentifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->CRASH_IDENTIFIER_TRACKING:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->CRASH_IDENTIFIER_TRACKING:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    .line 25
    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/CrashIdentifierTrackingMetrics$reportCrashIdentifier$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/util/fastmetrics/CrashIdentifierTrackingMetrics$reportCrashIdentifier$1;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
