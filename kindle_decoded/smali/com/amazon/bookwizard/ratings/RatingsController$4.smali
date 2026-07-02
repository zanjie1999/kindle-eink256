.class Lcom/amazon/bookwizard/ratings/RatingsController$4;
.super Ljava/lang/Object;
.source "RatingsController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsController;->downloadRelatedBooks(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

.field final synthetic val$category:Lcom/amazon/bookwizard/data/Category;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsController;Lcom/amazon/bookwizard/data/Category;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$4;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsController$4;->val$category:Lcom/amazon/bookwizard/data/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController$4;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {v0}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$4;->val$category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;->getBooks()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/bookwizard/data/DataProvider;->addRelatedBooks(Lcom/amazon/bookwizard/data/Category;Ljava/util/List;)V

    .line 226
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$4;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {p1}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$100(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/ratings/RatingsPageFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsController$4;->val$category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->notifyDataSetChanged(Lcom/amazon/bookwizard/data/Category;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p1, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ratings/RatingsController$4;->onResponse(Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooks;)V

    return-void
.end method
