.class public Lcom/amazon/bookwizard/data/Book;
.super Ljava/lang/Object;
.source "Book.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/data/Book$MiscData;
    }
.end annotation


# instance fields
.field private asin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asin"
    .end annotation
.end field

.field private authors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contributors"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageURI"
    .end annotation
.end field

.field private isRelatedBooksFetched:Z

.field private miscData:Lcom/amazon/bookwizard/data/Book$MiscData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miscData"
    .end annotation
.end field

.field private rating:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating"
    .end annotation
.end field

.field private title:Lcom/amazon/bookwizard/data/LString;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    instance-of v0, p1, Lcom/amazon/bookwizard/data/Book;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/data/Book;->asin:Ljava/lang/String;

    check-cast p1, Lcom/amazon/bookwizard/data/Book;

    iget-object p1, p1, Lcom/amazon/bookwizard/data/Book;->asin:Ljava/lang/String;

    .line 162
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Book;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Book;->authors:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Book;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Book;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationReason()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Book;->miscData:Lcom/amazon/bookwizard/data/Book$MiscData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    invoke-static {v0}, Lcom/amazon/bookwizard/data/Book$MiscData;->access$000(Lcom/amazon/bookwizard/data/Book$MiscData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/amazon/bookwizard/data/LString;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Book;->title:Lcom/amazon/bookwizard/data/LString;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/amazon/bookwizard/data/Book;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRelatedBooksFetched()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/amazon/bookwizard/data/Book;->isRelatedBooksFetched:Z

    return v0
.end method

.method public setRelatedBooksFetched(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/amazon/bookwizard/data/Book;->isRelatedBooksFetched:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/data/Book;->title:Lcom/amazon/bookwizard/data/LString;

    const-string v2, "TITLE"

    .line 171
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/data/Book;->asin:Ljava/lang/String;

    const-string v2, "ASIN"

    .line 172
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/data/Book;->authors:Ljava/lang/String;

    const-string v2, "AUTHORS"

    .line 173
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/bookwizard/data/Book;->isRelatedBooksFetched:Z

    const-string v2, "IS_RELATED_FETCHED"

    .line 174
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 175
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
