.class public Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;
.super Lcom/amazon/bookwizard/service/ViewResponse;
.source "GetRatingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRatingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RatingsView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/ViewResponse<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/amazon/bookwizard/service/BookList;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/ViewResponse;-><init>()V

    return-void
.end method

.method private getBooks(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/bookwizard/service/ViewResponse$View;->data:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    iget-object v0, v0, Lcom/amazon/bookwizard/service/ViewResponse$View;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/service/BookList;

    iget-object p1, p1, Lcom/amazon/bookwizard/service/BookList;->items:[Lcom/amazon/bookwizard/data/Book;

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBooks(Lcom/amazon/bookwizard/data/Genre;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/data/Genre;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Genre;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;->getBooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPopularBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "popular"

    .line 93
    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;->getBooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
