.class public Lcom/amazon/kindle/store/ExploreUtils;
.super Ljava/lang/Object;
.source "ExploreUtils.java"


# direct methods
.method public static createExploreIntent(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/library/models/BookType;)Landroid/content/Intent;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p2, v0, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 19
    new-instance p2, Landroid/content/Intent;

    const-string p1, "com.amazon.kindle.otter.action.SHOW_BACKISSUES"

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackIssueActivityIdExtraKey"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 21
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/amazon/kindle/store/StoreManager;->getStoreContext(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/store/StoreManager;->getStoreIntentForAsin(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method
