.class public final enum Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;
.super Ljava/lang/Enum;
.source "RecordLibraryContextMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

.field public static final enum MAX_SERIES_SIZE:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

.field public static final enum SERIES_COUNT:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

.field public static final enum SERIES_GROUPING_SETTING:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    const/4 v2, 0x0

    const-string v3, "SERIES_COUNT"

    const-string v4, "series_count"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->SERIES_COUNT:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    const/4 v2, 0x1

    const-string v3, "MAX_SERIES_SIZE"

    const-string v4, "max_series_size"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->MAX_SERIES_SIZE:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    const/4 v2, 0x2

    const-string v3, "SERIES_GROUPING_SETTING"

    const-string v4, "series_grouping_setting"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->SERIES_GROUPING_SETTING:Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/SeriesGroupMetricsKey;->value:Ljava/lang/String;

    return-object v0
.end method
