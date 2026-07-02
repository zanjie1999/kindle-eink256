.class final enum Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;
.super Ljava/lang/Enum;
.source "LibrarySearchMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FastMetricsKeyName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum APP_TAB:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum LENGTH:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum LIBRARY_RESULTS_SHOWN:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum LIBRARY_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum OUTCOME:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum SEARCH_ID:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum STORE_RESULTS_SHOWN:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

.field public static final enum STORE_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;


# instance fields
.field final emitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 580
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v1, 0x0

    const-string v2, "SEARCH_ID"

    const-string v3, "search_id"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 581
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v2, 0x1

    const-string v3, "LENGTH"

    const-string v4, "search_string_length"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LENGTH:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 582
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v3, 0x2

    const-string v4, "APP_TAB"

    const-string v5, "app_tab"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->APP_TAB:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 583
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v4, 0x3

    const-string v5, "OUTCOME"

    const-string v6, "outcome"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->OUTCOME:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 584
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v5, 0x4

    const-string v6, "STORE_RESULT_POSITION"

    const-string v7, "store_result_position"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->STORE_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 585
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v6, 0x5

    const-string v7, "STORE_RESULTS_SHOWN"

    const-string v8, "store_results_shown"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->STORE_RESULTS_SHOWN:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 586
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v7, 0x6

    const-string v8, "LIBRARY_RESULT_POSITION"

    const-string v9, "library_result_position"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LIBRARY_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 587
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/4 v8, 0x7

    const-string v9, "LIBRARY_RESULTS_SHOWN"

    const-string v10, "library_results_shown"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LIBRARY_RESULTS_SHOWN:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    .line 578
    sget-object v10, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LENGTH:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->APP_TAB:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->OUTCOME:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->STORE_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->STORE_RESULTS_SHOWN:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LIBRARY_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->$VALUES:[Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

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

    .line 592
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;
    .locals 1

    .line 578
    const-class v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;
    .locals 1

    .line 578
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->$VALUES:[Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    return-object v0
.end method
