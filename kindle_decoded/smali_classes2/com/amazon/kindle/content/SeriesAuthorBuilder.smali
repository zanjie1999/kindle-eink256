.class public Lcom/amazon/kindle/content/SeriesAuthorBuilder;
.super Ljava/lang/Object;
.source "SeriesAuthorBuilder.java"


# instance fields
.field private authorName:Ljava/lang/String;

.field private authorPronunciation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->clear()Lcom/amazon/kindle/content/SeriesAuthorBuilder;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;
    .locals 3

    .line 27
    new-instance v0, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;

    iget-object v1, p0, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->authorName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->authorPronunciation:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public clear()Lcom/amazon/kindle/content/SeriesAuthorBuilder;
    .locals 1

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->authorName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->authorPronunciation:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->authorName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAuthorName(Ljava/lang/String;)Lcom/amazon/kindle/content/SeriesAuthorBuilder;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->authorName:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthorPronunciation(Ljava/lang/String;)Lcom/amazon/kindle/content/SeriesAuthorBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/content/SeriesAuthorBuilder;->authorPronunciation:Ljava/lang/String;

    return-object p0
.end method
