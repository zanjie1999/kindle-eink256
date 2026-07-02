.class Lcom/amazon/bookwizard/ratings/RatingsController$2;
.super Ljava/lang/Object;
.source "RatingsController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsController;->downloadBooksToRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ratings/RatingsController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$2;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController$2;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {v0}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/data/DataProvider;->setRunningState(Lcom/amazon/bookwizard/service/State;)V

    .line 200
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController$2;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {v0}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;->getPopularBooks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/data/DataProvider;->addPopularBooks(Ljava/util/List;)V

    .line 201
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController$2;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {v0}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredGenres()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/bookwizard/data/Genre;

    .line 202
    iget-object v2, p0, Lcom/amazon/bookwizard/ratings/RatingsController$2;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {v2}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;->getBooks(Lcom/amazon/bookwizard/data/Genre;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amazon/bookwizard/data/DataProvider;->addBooks(Lcom/amazon/bookwizard/data/Genre;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ratings/RatingsController$2;->onResponse(Lcom/amazon/bookwizard/service/GetRatingsRequest$RatingsView;)V

    return-void
.end method
