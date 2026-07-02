.class Lcom/amazon/bookwizard/ratings/RatingsController$6;
.super Ljava/util/HashMap;
.source "RatingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsController;->updateBookRating(Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V
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

.field final synthetic val$rating:I


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsController;I)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$6;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    iput p2, p0, Lcom/amazon/bookwizard/ratings/RatingsController$6;->val$rating:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 272
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$6;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-static {p1}, Lcom/amazon/bookwizard/ratings/RatingsController;->access$000(Lcom/amazon/bookwizard/ratings/RatingsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatingsCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "BooksRatedCount"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$6;->val$rating:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "BookRating"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
