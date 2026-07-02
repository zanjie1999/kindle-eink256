.class Lcom/amazon/bookwizard/recommendations/RecsController$1;
.super Ljava/util/HashMap;
.source "RecsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/recommendations/RecsController;->onNext()V
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
.field final synthetic this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

.field final synthetic val$kuBooksDownloadedCount:I

.field final synthetic val$suggestedSamplesDownloadedCount:I

.field final synthetic val$wantToReadSamplesDownloadedCount:I


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/recommendations/RecsController;III)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    iput p2, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->val$suggestedSamplesDownloadedCount:I

    iput p3, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->val$wantToReadSamplesDownloadedCount:I

    iput p4, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->val$kuBooksDownloadedCount:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 225
    iget p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->val$suggestedSamplesDownloadedCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "SuggestedSamplesDownloadedCount"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->val$wantToReadSamplesDownloadedCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "WantToReadSamplesDownloadedCount"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-static {p1}, Lcom/amazon/bookwizard/recommendations/RecsController;->access$000(Lcom/amazon/bookwizard/recommendations/RecsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getRecommendations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "TotalSuggestedSamplesCount"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-static {p1}, Lcom/amazon/bookwizard/recommendations/RecsController;->access$000(Lcom/amazon/bookwizard/recommendations/RecsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "TotalWantToReadSamplesCount"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$1;->val$kuBooksDownloadedCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "BooksDownloaded"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
