.class public Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;
.super Ljava/lang/Object;
.source "TopSearchDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/widget/TopSearchDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopSearchData"
.end annotation


# instance fields
.field private currentSlide:I

.field private final expireDate:Ljava/lang/String;

.field private slideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final topSearchWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wordNumPerSlide:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->topSearchWords:Ljava/util/List;

    .line 314
    iput-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->expireDate:Ljava/lang/String;

    const/4 p1, -0x1

    .line 315
    iput p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->currentSlide:I

    .line 316
    iput p3, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->wordNumPerSlide:I

    .line 317
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->groupWordsIntoSlides()V

    return-void
.end method

.method private groupWordsIntoSlides()V
    .locals 5

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->slideList:Ljava/util/List;

    .line 375
    iget v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->wordNumPerSlide:I

    mul-int/lit8 v1, v0, 0x0

    add-int/2addr v0, v1

    const/4 v2, 0x0

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->topSearchWords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->topSearchWords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->slideList:Ljava/util/List;

    iget-object v4, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->topSearchWords:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 380
    iget v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->wordNumPerSlide:I

    mul-int v1, v2, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getExpireDate()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNextSlideOfWords()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->slideList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 352
    iget v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->currentSlide:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->currentSlide:I

    .line 353
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->slideList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 354
    iget v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->currentSlide:I

    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->slideList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->currentSlide:I

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->slideList:Ljava/util/List;

    iget v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->currentSlide:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWordRank(I)I
    .locals 2

    .line 369
    iget v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->currentSlide:I

    iget v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->wordNumPerSlide:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .line 327
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 328
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 329
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->expireDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
