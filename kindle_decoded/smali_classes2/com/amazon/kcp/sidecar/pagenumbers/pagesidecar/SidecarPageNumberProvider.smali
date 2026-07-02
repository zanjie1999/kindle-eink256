.class public Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;
.super Ljava/lang/Object;
.source "SidecarPageNumberProvider.java"

# interfaces
.implements Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;
    }
.end annotation


# static fields
.field private static final CDE_TYPE_KEY:Ljava/lang/String; = "cdeType"

.field private static final DEFAULT_CDE_TYPE:Lcom/amazon/kcp/library/models/BookType;

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FILE_REVISION_ID_KEY:Ljava/lang/String; = "fileRevisionId"

.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "SidecarPageNumberProvider"

.field private static final NO_BREAKS:[I

.field private static final PAGE_MAP_KEY:Ljava/lang/String; = "pageMap"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile cachedFirstPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

.field private volatile cachedLastPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

.field private cachedMaxPageLabel:Ljava/lang/String;

.field private cdeType:Lcom/amazon/kcp/library/models/BookType;

.field private fileRevisionId:Ljava/lang/String;

.field private firstLabeledOrdinalPage:I

.field private hasPageNumbers:Z

.field private labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

.field private lastLabeledOrdinalPage:I

.field private positions:[I

.field private totalPages:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->TAG:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->DEFAULT_CDE_TYPE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 45
    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->NO_BREAKS:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->fileRevisionId:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cdeType:Lcom/amazon/kcp/library/models/BookType;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->hasPageNumbers:Z

    .line 56
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    .line 57
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    const/4 v2, -0x1

    .line 58
    iput v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->firstLabeledOrdinalPage:I

    .line 59
    iput v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->lastLabeledOrdinalPage:I

    .line 60
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedMaxPageLabel:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->totalPages:I

    .line 66
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedFirstPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    .line 67
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedLastPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    .line 86
    invoke-static {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->isValidSidecarPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->initializePageNumberData(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page number sidecar unavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    sget-object p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->TAG:Ljava/lang/String;

    const-string v0, "Page number sidecar unavailable for a book"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static close(Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 504
    sget-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not close page label sidecar reader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private findStartingOrdinalPageForFirstPosition(I)I
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedFirstPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    if-eqz v0, :cond_0

    .line 434
    iget v1, v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->position:I

    if-ne v1, p1, :cond_0

    .line 435
    iget p1, v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->ordinalPage:I

    return p1

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->findStartingOrdinalPageForPosition(I)I

    move-result v0

    .line 438
    new-instance v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;-><init>(Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$1;)V

    .line 439
    iput p1, v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->position:I

    .line 440
    iput v0, v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->ordinalPage:I

    .line 441
    iput-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedFirstPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    return v0
.end method

.method private findStartingOrdinalPageForLastPosition(I)I
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedLastPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    if-eqz v0, :cond_0

    .line 452
    iget v1, v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->position:I

    if-ne v1, p1, :cond_0

    .line 453
    iget p1, v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->ordinalPage:I

    return p1

    .line 455
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->findStartingOrdinalPageForPosition(I)I

    move-result v0

    .line 456
    new-instance v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;-><init>(Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$1;)V

    .line 457
    iput p1, v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->position:I

    .line 458
    iput v0, v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;->ordinalPage:I

    .line 459
    iput-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedLastPositionLabelLookup:Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider$CacheEntry;

    return v0
.end method

.method private findStartingOrdinalPageForPosition(I)I
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getFirstPageLabelForOrdinalPage(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getPageLabelTextForOrdinalPage(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    aget p1, v1, p1

    iget v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->firstLabeledOrdinalPage:I

    aget v1, v1, v2

    if-ne p1, v1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {p1, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getPageLabelTextForOrdinalPage(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getLastPageLabelForOrdinalPage(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 312
    :cond_0
    :goto_0
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->lastLabeledOrdinalPage:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_1

    move p1, v2

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getPageLabelTextForOrdinalPage(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final initializePageNumberData(Ljava/lang/String;)V
    .locals 8

    const-string v0, "pageMap"

    const-string v1, "cdeType"

    const-string v2, "fileRevisionId"

    const-string v3, "SidecarPageNumberProvider"

    .line 112
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 115
    :try_start_0
    new-instance v6, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;

    invoke-direct {v6, v4}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->getHeaderMetadata()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->fileRevisionId:Ljava/lang/String;

    .line 127
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cdeType:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    .line 130
    :cond_0
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->DEFAULT_CDE_TYPE:Lcom/amazon/kcp/library/models/BookType;

    iput-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cdeType:Lcom/amazon/kcp/library/models/BookType;

    .line 136
    :goto_0
    invoke-virtual {v6}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->getEditionCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 137
    invoke-static {}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->resolveSelectedEdition()I

    move-result v1

    .line 140
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v6, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->getEditionMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    invoke-virtual {v6, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->getTotalPageCount(I)I

    move-result v4

    iput v4, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->totalPages:I

    .line 148
    new-instance v4, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    .line 149
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->totalPages:I

    invoke-direct {v4, v0, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;-><init>(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {v4}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getLabelSequences()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    if-eqz v2, :cond_2

    move-object v5, v2

    .line 160
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v6, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;->getOrdinalPagePositions(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    .line 166
    iput-object v4, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    .line 167
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->firstLabeledOrdinalPage:I

    .line 168
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getEndingOrdinalPageNumber()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->lastLabeledOrdinalPage:I

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getHighestPageLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedMaxPageLabel:Ljava/lang/String;

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->hasPageNumbers:Z

    goto :goto_2

    .line 155
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Page number sidecar edition doesn\'t contain a valid page label index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Page number sidecar edition doesn\'t contain appropriate metadata (missing pageMap)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_4
    :goto_2
    invoke-static {v6}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->close(Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;)V

    goto/16 :goto_8

    .line 122
    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Page number sidecar header doesn\'t contain appropriate metadata (missing fileRevisionId)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v5, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v6

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v6

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v5, v6

    goto :goto_6

    :catchall_1
    move-exception p1

    goto/16 :goto_9

    :catch_4
    move-exception v0

    .line 184
    :goto_3
    :try_start_3
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PageMap couldn\'t be understood from page number sidecar file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "PageLabelIndexParseException"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_5
    move-exception v0

    .line 180
    :goto_4
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse JSON metadata from page number sidecar file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "JSONException"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_6
    move-exception v0

    .line 177
    :goto_5
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading page number sidecar file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "IOException"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_7
    move-exception v0

    .line 174
    :goto_6
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read the page number sidecar: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "FileNotFoundException"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    :goto_7
    invoke-static {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->close(Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;)V

    :goto_8
    return-void

    :goto_9
    invoke-static {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->close(Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BinaryPageLabelSidecarReader;)V

    .line 190
    throw p1
.end method

.method private static isValidSidecarPath(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 106
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static resolveSelectedEdition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCdeType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cdeType:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getMaxPageLabel()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->cachedMaxPageLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPageBreakPositionsInSpan(II)[I
    .locals 4

    .line 268
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->findStartingOrdinalPageForFirstPosition(I)I

    move-result v0

    .line 269
    invoke-direct {p0, p2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->findStartingOrdinalPageForLastPosition(I)I

    move-result p2

    if-lt v0, p2, :cond_0

    .line 273
    sget-object p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->NO_BREAKS:[I

    goto :goto_2

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 279
    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v0, -0x1

    sub-int/2addr p2, p1

    .line 283
    new-array p1, p2, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    add-int v3, v1, v0

    aget v2, v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object p1
.end method

.method public getPageLabelForFirstPosition(I)Ljava/lang/String;
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->findStartingOrdinalPageForFirstPosition(I)I

    move-result p1

    .line 327
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->getFirstPageLabelForOrdinalPage(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageLabelPairInSpan(II)[Ljava/lang/String;
    .locals 4

    .line 408
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->findStartingOrdinalPageForFirstPosition(I)I

    move-result p1

    .line 409
    invoke-direct {p0, p2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->findStartingOrdinalPageForLastPosition(I)I

    move-result p2

    const-string v0, ""

    move-object v1, v0

    :goto_0
    if-gt p1, p2, :cond_2

    .line 416
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->getFirstPageLabelForOrdinalPage(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->getLastPageLabelForOrdinalPage(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object v1, p1, p2

    return-object p1
.end method

.method public getPageRangeSummary()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-static {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRangeFormatter;->getPageLabelRangeSummary(Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForPageLabel(Ljava/lang/String;)I
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getOrdinalPageForPageLabelText(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v1, 0x0

    .line 353
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const p1, 0x7fffffff

    return p1

    .line 367
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->isRomanNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 370
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    sget-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getHighestOrdinalPageOfType(Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;)I

    move-result v0

    :cond_1
    if-gtz v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 384
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    array-length v1, p1

    if-lt v0, v1, :cond_3

    .line 385
    array-length p1, p1

    add-int/lit8 v0, p1, -0x1

    .line 391
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->positions:[I

    aget p1, p1, v0

    return p1
.end method

.method public getTotalArabicPages()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getTotalArabicPages()I

    move-result v0

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->totalPages:I

    return v0
.end method

.method public getTotalRomanPages()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getTotalRomanPages()I

    move-result v0

    return v0
.end method

.method public isPageNumberingSupported()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->hasPageNumbers:Z

    return v0
.end method

.method public isPaginationNumericOnly()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->labelIndex:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->isPaginationArabicOnly()Z

    move-result v0

    return v0
.end method
