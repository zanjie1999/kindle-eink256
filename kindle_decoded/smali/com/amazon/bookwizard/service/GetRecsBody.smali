.class Lcom/amazon/bookwizard/service/GetRecsBody;
.super Ljava/lang/Object;
.source "GetRecsBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;,
        Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;
    }
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private runningState:Lcom/amazon/bookwizard/service/State;

.field private userData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;",
            ">;"
        }
    .end annotation
.end field

.field private viewId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Book;",
            "Lcom/amazon/bookwizard/data/Rating;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetRecsBody;->language:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/service/GetRecsBody;->runningState:Lcom/amazon/bookwizard/service/State;

    .line 39
    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetRecsBody;->viewId:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/service/GetRecsBody;->userData:Ljava/util/Map;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    .line 43
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/data/Rating;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/Rating;->getCategory()Lcom/amazon/bookwizard/data/Category;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/bookwizard/data/Category;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 46
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 48
    :cond_0
    new-instance v3, Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/bookwizard/data/Book;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/bookwizard/data/Rating;

    invoke-direct {v3, v4, v5, v1}, Lcom/amazon/bookwizard/service/GetRecsBody$RatingData;-><init>(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;Lcom/amazon/bookwizard/service/GetRecsBody$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Rating;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Rating;->getCategory()Lcom/amazon/bookwizard/data/Category;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/bookwizard/data/Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 53
    iget-object v0, p0, Lcom/amazon/bookwizard/service/GetRecsBody;->userData:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {v3, p2, v1}, Lcom/amazon/bookwizard/service/GetRecsBody$RatingsList;-><init>(Ljava/util/List;Lcom/amazon/bookwizard/service/GetRecsBody$1;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
