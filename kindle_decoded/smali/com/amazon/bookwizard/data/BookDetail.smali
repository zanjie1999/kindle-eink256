.class public Lcom/amazon/bookwizard/data/BookDetail;
.super Ljava/lang/Object;
.source "BookDetail.java"

# interfaces
.implements Lcom/amazon/bookwizard/http/IWithHeaders;


# instance fields
.field private authors:Lcom/amazon/bookwizard/data/LString;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authors"
    .end annotation
.end field

.field private averageRating:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating"
    .end annotation
.end field

.field private book:Lcom/amazon/bookwizard/data/Book;

.field private categoryId:Ljava/lang/String;

.field private description:Lcom/amazon/bookwizard/data/LString;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;

.field private isKu:Z

.field private reason:Ljava/lang/String;

.field private recSourceId:Ljava/lang/String;

.field private reviewCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalReviews"
    .end annotation
.end field

.field private title:Lcom/amazon/bookwizard/data/LString;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageRating()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->averageRating:D

    return-wide v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getContributors()Lcom/amazon/bookwizard/data/LString;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->authors:Lcom/amazon/bookwizard/data/LString;

    return-object v0
.end method

.method public getDescription()Lcom/amazon/bookwizard/data/LString;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->description:Lcom/amazon/bookwizard/data/LString;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->book:Lcom/amazon/bookwizard/data/Book;

    if-nez v0, :cond_1

    .line 91
    const-class v0, Lcom/amazon/bookwizard/data/BookDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetImageURL is null"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Book;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->reviewCount:I

    return v0
.end method

.method public getTitle()Lcom/amazon/bookwizard/data/LString;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->title:Lcom/amazon/bookwizard/data/LString;

    return-object v0
.end method

.method public isGoodreads()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->recSourceId:Ljava/lang/String;

    const-string v1, "GOODREADS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKu()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/amazon/bookwizard/data/BookDetail;->isKu:Z

    return v0
.end method

.method public setBook(Lcom/amazon/bookwizard/data/Book;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazon/bookwizard/data/BookDetail;->book:Lcom/amazon/bookwizard/data/Book;

    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazon/bookwizard/data/BookDetail;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/amazon/bookwizard/data/BookDetail;->headers:Ljava/util/Map;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/bookwizard/data/BookDetail;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsKu(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/amazon/bookwizard/data/BookDetail;->isKu:Z

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazon/bookwizard/data/BookDetail;->reason:Ljava/lang/String;

    return-void
.end method

.method public setRecSource(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/bookwizard/data/BookDetail;->recSourceId:Ljava/lang/String;

    return-void
.end method
