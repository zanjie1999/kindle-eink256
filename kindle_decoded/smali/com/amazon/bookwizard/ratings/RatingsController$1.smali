.class Lcom/amazon/bookwizard/ratings/RatingsController$1;
.super Ljava/util/HashMap;
.source "RatingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsController;->onNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ratings/RatingsController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$1;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$1;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {p1}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatingsCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "BooksRatedCount"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$1;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {p1}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "BooksMarkedAsWantToRead"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
