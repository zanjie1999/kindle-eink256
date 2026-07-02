.class public Lcom/amazon/ea/sidecar/def/data/AuthorBioData;
.super Ljava/lang/Object;
.source "AuthorBioData.java"


# instance fields
.field public final asin:Ljava/lang/String;

.field public final bio:Ljava/lang/String;

.field public final imageURL:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

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

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    if-eq v2, v3, :cond_2

    return v1

    .line 45
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    .line 46
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    .line 47
    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    const-string v2, "imageURL"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    const-string v2, "bio"

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
