.class synthetic Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$1;
.super Ljava/lang/Object;
.source "LibrarySearchMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$search$metrics$LibrarySearchOutcome:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 296
    invoke-static {}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->values()[Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$1;->$SwitchMap$com$amazon$kcp$search$metrics$LibrarySearchOutcome:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$1;->$SwitchMap$com$amazon$kcp$search$metrics$LibrarySearchOutcome:[I

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$1;->$SwitchMap$com$amazon$kcp$search$metrics$LibrarySearchOutcome:[I

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_SERIES_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$1;->$SwitchMap$com$amazon$kcp$search$metrics$LibrarySearchOutcome:[I

    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_DOWNLOAD:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
