.class Lcom/amazon/bookwizard/ratings/RatingsController$7;
.super Ljava/util/HashMap;
.source "RatingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsController;->onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

.field final synthetic val$isWantToRead:Z


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsController;Z)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$7;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    iput-boolean p2, p0, Lcom/amazon/bookwizard/ratings/RatingsController$7;->val$isWantToRead:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 290
    iget-boolean p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$7;->val$isWantToRead:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "IsWantToReadSelected"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$7;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {p1}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "BooksMarkedAsWantToRead"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
