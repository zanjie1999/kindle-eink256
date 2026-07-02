.class public Lcom/amazon/kcp/library/mar/MarkAsReadActionButtonProvider;
.super Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;
.source "MarkAsReadActionButtonProvider.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;Lcom/amazon/kindle/network/INetworkService;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;-><init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;Lcom/amazon/kindle/network/INetworkService;)V

    return-void
.end method


# virtual methods
.method getActionStringId()Ljava/lang/String;
    .locals 1

    .line 44
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->read_state_contextual_action:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "MARK_AS_READ_BUTTON_KEY"

    return-object v0
.end method

.method protected getMARActionButton(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    .line 33
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->IN_PROGRESS:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne v0, v1, :cond_0

    .line 35
    :cond_1
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->mark_as_read:I

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->mark_as_read_for_accessibility:I

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->createMARActionButton(IILcom/amazon/kindle/krx/content/IBook$ReadState;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getMarkAsActionButtonOption()Ljava/lang/String;
    .locals 1

    const-string v0, "MarkAsReadManualFinished"

    return-object v0
.end method
