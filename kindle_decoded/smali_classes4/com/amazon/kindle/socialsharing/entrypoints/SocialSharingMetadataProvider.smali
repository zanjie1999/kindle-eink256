.class public Lcom/amazon/kindle/socialsharing/entrypoints/SocialSharingMetadataProvider;
.super Ljava/lang/Object;
.source "SocialSharingMetadataProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "com.amazon.kindle.krx.library.BookMetadataKey.BOOK_SHARING_ENABLED"

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.amazon.kindle.krx.library.BookMetadataKey.QUOTE_SHARING_ENABLED"

    const-string v3, "com.amazon.kindle.krx.library.BookMetadataKey.PROGRESS_SHARING_ENABLED"

    if-nez v1, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 47
    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IReaderManager;->inDemoMode()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object p1, v4

    .line 60
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canPerformBookShare(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_4
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canPerformProgressShare(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 67
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canPerformQuoteShare(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_7
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
