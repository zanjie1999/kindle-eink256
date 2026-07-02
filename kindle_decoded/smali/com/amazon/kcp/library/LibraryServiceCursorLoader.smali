.class public Lcom/amazon/kcp/library/LibraryServiceCursorLoader;
.super Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;
.source "LibraryServiceCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/AbstractLibraryCursorLoader<",
        "Ljava/util/List<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MAX_ATTEMPT_COUNT:I = 0x3

.field private static final SIMPLE_CLASS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private final groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private final library:Lcom/amazon/kindle/content/ILibraryService;

.field private final limit:I

.field private final originId:Ljava/lang/String;

.field private final query:Lcom/amazon/kcp/library/ILibraryItemQuery;

.field private final sortType:Lcom/amazon/kcp/library/LibrarySortType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->TAG:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->SIMPLE_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->library:Lcom/amazon/kindle/content/ILibraryService;

    .line 40
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 41
    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 42
    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 43
    iput p6, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->limit:I

    .line 44
    iput-object p7, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->originId:Ljava/lang/String;

    .line 45
    iput-object p8, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->query:Lcom/amazon/kcp/library/ILibraryItemQuery;

    return-void
.end method


# virtual methods
.method protected bridge synthetic loadData()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->loadData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->library:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget v6, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->limit:I

    iget-object v7, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->originId:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->query:Lcom/amazon/kcp/library/ILibraryItemQuery;

    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/kindle/util/ConcurrentDataModificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 57
    sget-object v2, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Concurrent data modification detected during attempt #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->SIMPLE_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConcurrentDataModification-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loader failed; maximum number of attempts reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;->SIMPLE_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
