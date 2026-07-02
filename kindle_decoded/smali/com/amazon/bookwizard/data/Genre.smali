.class public Lcom/amazon/bookwizard/data/Genre;
.super Ljava/lang/Object;
.source "Genre.java"

# interfaces
.implements Lcom/amazon/bookwizard/data/Category;


# instance fields
.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isPreferred:Z

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 94
    :cond_0
    instance-of v1, p1, Lcom/amazon/bookwizard/data/Genre;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 98
    :cond_1
    check-cast p1, Lcom/amazon/bookwizard/data/Genre;

    .line 99
    iget-object v1, p0, Lcom/amazon/bookwizard/data/Genre;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/bookwizard/data/Genre;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/bookwizard/data/Genre;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/bookwizard/data/Genre;->id:Ljava/lang/String;

    .line 100
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Genre;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/amazon/bookwizard/data/LString;
    .locals 3

    .line 55
    new-instance v0, Lcom/amazon/bookwizard/data/LString;

    iget-object v1, p0, Lcom/amazon/bookwizard/data/Genre;->name:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/data/LString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/amazon/bookwizard/data/Genre;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/bookwizard/data/Genre;->id:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPreferred()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/amazon/bookwizard/data/Genre;->isPreferred:Z

    return v0
.end method

.method public setPreferred(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/amazon/bookwizard/data/Genre;->isPreferred:Z

    return-void
.end method
