.class public final Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;
.super Ljava/lang/Object;
.source "DisplayMaskMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;

    .line 14
    sget-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->getINSTANCE()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v0

    return-object v0
.end method
