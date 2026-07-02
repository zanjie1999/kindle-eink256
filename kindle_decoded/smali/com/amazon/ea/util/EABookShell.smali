.class public Lcom/amazon/ea/util/EABookShell;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "EABookShell.java"


# instance fields
.field private final data:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

.field private type:Lcom/amazon/kindle/krx/content/ContentType;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/ea/util/EABookShell;->data:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    return-void
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/ea/util/EABookShell;->data:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/amazon/ea/util/EABookShell;->data:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "; "

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/amazon/ea/util/EABookShell;->data:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/ea/util/EABookShell;->type:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/ea/util/EABookShell;->data:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setContentType(Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/ea/util/EABookShell;->type:Lcom/amazon/kindle/krx/content/ContentType;

    return-void
.end method
