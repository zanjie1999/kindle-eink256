.class Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;
.super Ljava/lang/Object;
.source "RatingsPageFragment.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->updateAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Lcom/amazon/bookwizard/data/Category;",
        "Ljava/util/List<",
        "Lcom/amazon/bookwizard/data/Book;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsPageFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;->this$0:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 165
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;->getKey()Lcom/amazon/bookwizard/data/Category;

    move-result-object v0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getKey()Lcom/amazon/bookwizard/data/Category;
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/bookwizard/data/Category;->POPULAR:Lcom/amazon/bookwizard/data/Category;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;->getKey()Lcom/amazon/bookwizard/data/Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;->this$0:Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    invoke-static {v0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->access$000(Lcom/amazon/bookwizard/ratings/RatingsPageFragment;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPopularBooks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;->getKey()Lcom/amazon/bookwizard/data/Category;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;->setValue(Ljava/util/List;)Ljava/util/List;

    const/4 p1, 0x0

    throw p1
.end method

.method public setValue(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
