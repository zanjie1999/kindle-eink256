.class public final Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;
.super Ljava/lang/Object;
.source "ReadingRulerMetricsManager.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;

    .line 7
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsManager;->getINSTANCE()Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;

    move-result-object v0

    return-object v0
.end method
