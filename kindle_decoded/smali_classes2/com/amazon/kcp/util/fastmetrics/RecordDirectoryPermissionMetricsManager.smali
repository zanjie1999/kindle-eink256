.class public final Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;
.super Ljava/lang/Object;
.source "RecordDirectoryPermissionMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;

    .line 50
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;->getINSTANCE()Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    move-result-object v0

    return-object v0
.end method
