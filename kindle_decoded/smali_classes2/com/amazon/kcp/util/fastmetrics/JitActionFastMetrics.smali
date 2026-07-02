.class public final Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;
.super Ljava/lang/Object;
.source "JitActionFastMetrics.kt"


# static fields
.field private static final ACTION_DISMISSED:Ljava/lang/String; = "dismissed"

.field private static final ACTION_SHOWN:Ljava/lang/String; = "shown"

.field private static final FIELD_KEY_ACTION:Ljava/lang/String; = "action"

.field private static final FIELD_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final reportJitAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 49
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_APP_JIT_DISPLAYED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->READER_APP_JIT_DISPLAYED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics$reportJitAction$1;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics$reportJitAction$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final reportJitDismissed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "jitName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;

    const-string v1, "dismissed"

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->reportJitAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final reportJitShown(Ljava/lang/String;)V
    .locals 2

    const-string v0, "jitName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;

    const-string v1, "shown"

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->reportJitAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
