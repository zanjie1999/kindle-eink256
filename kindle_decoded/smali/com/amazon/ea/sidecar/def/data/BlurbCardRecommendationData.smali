.class public final Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;
.super Lcom/amazon/ea/sidecar/def/data/RecommendationData;
.source "BlurbCardRecommendationData.java"


# instance fields
.field private final blurb:Ljava/lang/String;

.field private final blurbAuthorImageAltText:Ljava/lang/String;

.field private final blurbAuthorImageUrl:Ljava/lang/String;

.field private final blurbAuthorName:Ljava/lang/String;

.field private final blurbAuthorNameAltText:Ljava/lang/String;

.field private final blurbAuthorRole:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/data/RecommendationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 43
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurb:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorName:Ljava/lang/String;

    .line 45
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageUrl:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorRole:Ljava/lang/String;

    .line 47
    iput-object p9, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageAltText:Ljava/lang/String;

    .line 48
    iput-object p10, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorNameAltText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    if-eq v2, v3, :cond_2

    return v1

    .line 62
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;

    .line 63
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    .line 64
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurb:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurb:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorName:Ljava/lang/String;

    .line 65
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorRole:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorRole:Ljava/lang/String;

    .line 66
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageAltText:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageAltText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorNameAltText:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorNameAltText:Ljava/lang/String;

    .line 67
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBlurb()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurb:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurbAuthorImageAltText()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurbAuthorImageUrl()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurbAuthorName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurbAuthorNameAltText()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorNameAltText:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurbAuthorRole()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorRole:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurb:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageUrl:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorRole:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    const-string v2, "imageURL"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurb:Ljava/lang/String;

    const-string v2, "blurb"

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorName:Ljava/lang/String;

    const-string v2, "blurbAuthorName"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageUrl:Ljava/lang/String;

    const-string v2, "blurbAuthorImageUrl"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorRole:Ljava/lang/String;

    const-string v2, "blurbAuthorRole"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    const-string v2, "authors"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorImageAltText:Ljava/lang/String;

    const-string v2, "blurbAuthorImageAltText"

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;->blurbAuthorNameAltText:Ljava/lang/String;

    const-string v2, "blurbAuthorNameAltText"

    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
