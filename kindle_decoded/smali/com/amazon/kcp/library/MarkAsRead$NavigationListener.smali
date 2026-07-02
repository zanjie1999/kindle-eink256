.class final Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "MarkAsRead.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/MarkAsRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NavigationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/MarkAsRead;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/MarkAsRead;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;->this$0:Lcom/amazon/kcp/library/MarkAsRead;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    if-ne p2, v0, :cond_0

    .line 238
    iget-object p2, p0, Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;->this$0:Lcom/amazon/kcp/library/MarkAsRead;

    invoke-static {p2}, Lcom/amazon/kcp/library/MarkAsRead;->access$getSdk$p(Lcom/amazon/kcp/library/MarkAsRead;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p2

    const-string/jumbo v0, "sdk.readerManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo v0, "navigator"

    .line 239
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 240
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 245
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    sub-int/2addr v0, p2

    const/16 p2, 0xa

    if-ge v0, p2, :cond_0

    .line 246
    iget-object p2, p0, Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;->this$0:Lcom/amazon/kcp/library/MarkAsRead;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0, v0}, Lcom/amazon/kcp/library/MarkAsRead;->access$autoMarkBookAsRead(Lcom/amazon/kcp/library/MarkAsRead;Lcom/amazon/kindle/krx/content/IBook;ZZZ)V

    :cond_0
    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 221
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->getNavigationType()Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->isNextPageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/amazon/kcp/library/MarkAsRead;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Turning past end of book"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;->this$0:Lcom/amazon/kcp/library/MarkAsRead;

    invoke-static {v0}, Lcom/amazon/kcp/library/MarkAsRead;->access$getLibraryService$p(Lcom/amazon/kcp/library/MarkAsRead;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 229
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->getContent()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const-string/jumbo v1, "pageTurnAbortedEventData.content"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;->this$0:Lcom/amazon/kcp/library/MarkAsRead;

    new-instance v1, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Lcom/amazon/kcp/library/MarkAsRead;->access$autoMarkBookAsRead(Lcom/amazon/kcp/library/MarkAsRead;Lcom/amazon/kindle/krx/content/IBook;ZZZ)V

    :cond_0
    return-void
.end method
