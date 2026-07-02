.class public final Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;
.super Ljava/lang/Object;
.source "BookOpenIndexMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;->INSTANCE:Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;

    .line 40
    sget-object v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;->INSTANCE:Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;->getINSTANCE()Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;

    move-result-object v0

    return-object v0
.end method
