.class public Lcom/amazon/bookwizard/BookViewManager;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/ui/view/BookView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/data/DataProvider;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/bookwizard/BookViewManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 37
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/BookViewManager;->views:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/ui/view/BookView;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/bookwizard/BookViewManager;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/bookwizard/BookViewManager;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookViewManager;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/ui/view/BookView;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/bookwizard/BookViewManager;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 66
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateViews(Lcom/amazon/bookwizard/data/Book;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/bookwizard/BookViewManager;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/amazon/bookwizard/BookViewManager;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/bookwizard/data/DataProvider;->getRating(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Rating;

    move-result-object p1

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/bookwizard/ui/view/BookView;

    .line 84
    invoke-virtual {v1, p1}, Lcom/amazon/bookwizard/ui/view/BookView;->setRating(Lcom/amazon/bookwizard/data/Rating;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
