.class Lcom/amazon/kcp/search/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchActivity;->launchBookViaOneClick(ILcom/amazon/kindle/model/content/IListableBook;ILandroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final itemPosition:I

.field final synthetic this$0:Lcom/amazon/kcp/search/SearchActivity;

.field final synthetic val$book:Lcom/amazon/kindle/model/content/IListableBook;

.field final synthetic val$position:I

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchActivity;ILcom/amazon/kindle/model/content/IListableBook;I)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    iput p2, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$position:I

    iput-object p3, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    iput p4, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$searchId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    iget p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->itemPosition:I

    return-void
.end method


# virtual methods
.method public emitMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V
    .locals 2

    .line 1447
    sget-object p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->DOWNLOAD:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    if-ne p2, p1, :cond_1

    .line 1448
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1449
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    const-string p2, "BookDownloadOneTapScreen"

    invoke-static {p1, p2}, Lcom/amazon/kcp/search/SearchActivity;->access$400(Lcom/amazon/kcp/search/SearchActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    iget p2, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$searchId:I

    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_DOWNLOAD:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    iget v1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->itemPosition:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V

    goto :goto_0

    .line 1453
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    if-ne p2, p1, :cond_2

    .line 1454
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    iget p2, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$searchId:I

    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    iget v1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->itemPosition:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V

    .line 1455
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1456
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$5;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    const-string p2, "LocalBookOpened"

    invoke-static {p1, p2}, Lcom/amazon/kcp/search/SearchActivity;->access$400(Lcom/amazon/kcp/search/SearchActivity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
