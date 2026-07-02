.class public Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;
.super Lcom/amazon/bookwizard/service/ViewResponse;
.source "GetRecsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRecsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecsView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/bookwizard/service/ViewResponse<",
        "Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;",
        ">;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "GSON deserialization"
    value = {
        "NP_UNWRITTEN_FIELD"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/ViewResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommendations()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/amazon/bookwizard/service/ViewResponse$View;->data:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;

    invoke-static {v0}, Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;->access$000(Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;)Lcom/amazon/bookwizard/service/BookList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amazon/bookwizard/service/ViewResponse;->view:Lcom/amazon/bookwizard/service/ViewResponse$View;

    iget-object v1, v1, Lcom/amazon/bookwizard/service/ViewResponse$View;->data:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;

    invoke-static {v1}, Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;->access$000(Lcom/amazon/bookwizard/service/GetRecsRequest$ViewData;)Lcom/amazon/bookwizard/service/BookList;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/bookwizard/service/BookList;->items:[Lcom/amazon/bookwizard/data/Book;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 91
    new-instance v5, Lcom/amazon/bookwizard/data/Recommendation;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/amazon/bookwizard/data/Recommendation;-><init>(Lcom/amazon/bookwizard/data/Book;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
