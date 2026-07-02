.class public Lcom/amazon/falkor/FalkorBook;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "FalkorBookOpenManager.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final author:Ljava/lang/String;

.field private final isPaywalled:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/FalkorBook;->asin:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/amazon/falkor/FalkorBook;->isPaywalled:Z

    iput-object p3, p0, Lcom/amazon/falkor/FalkorBook;->author:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/falkor/FalkorBook;->title:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const-string v0, ""

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 77
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/falkor/FalkorBook;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getType()I
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/falkor/FalkorBook;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/falkor/FalkorBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMZNID0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/falkor/FalkorBook;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/falkor/FalkorBook;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/amazon/falkor/FalkorBook;->isPaywalled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    :goto_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/BookFormat;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/falkor/FalkorBook;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFalkorEpisode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
