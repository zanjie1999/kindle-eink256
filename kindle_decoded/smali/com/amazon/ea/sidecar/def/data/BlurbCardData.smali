.class public Lcom/amazon/ea/sidecar/def/data/BlurbCardData;
.super Ljava/lang/Object;
.source "BlurbCardData.java"


# instance fields
.field private final programDarkImageUrl:Ljava/lang/String;

.field private final programImageAltText:Ljava/lang/String;

.field private final programLightImageUrl:Ljava/lang/String;

.field private final recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->recommendations:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programLightImageUrl:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programDarkImageUrl:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programImageAltText:Ljava/lang/String;

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

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;

    if-eq v2, v3, :cond_2

    return v1

    .line 48
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;

    .line 49
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->recommendations:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->recommendations:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programLightImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programLightImageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programDarkImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programDarkImageUrl:Ljava/lang/String;

    .line 50
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programImageAltText:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programImageAltText:Ljava/lang/String;

    .line 51
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProgramDarkImageUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programDarkImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramImageAltText()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programImageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramLightImageUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programLightImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->recommendations:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->recommendations:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programLightImageUrl:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->recommendations:Ljava/util/List;

    const-string/jumbo v2, "recommendations"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programLightImageUrl:Ljava/lang/String;

    const-string/jumbo v2, "programLightImageUrl"

    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programDarkImageUrl:Ljava/lang/String;

    const-string/jumbo v2, "programDarkImageUrl"

    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/BlurbCardData;->programImageAltText:Ljava/lang/String;

    const-string/jumbo v2, "programImageAltText"

    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
