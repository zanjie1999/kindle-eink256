.class public Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;
.super Lcom/amazon/bookwizard/service/DataResponse;
.source "GetRelatedBooksRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRelatedBooksRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelatedBooks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/DataResponse<",
        "Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/DataResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/bookwizard/service/DataResponse;->data:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "relatedBooks"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/service/DataResponse;->data:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;

    invoke-static {v0}, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;->access$100(Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$BookList;)[Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
