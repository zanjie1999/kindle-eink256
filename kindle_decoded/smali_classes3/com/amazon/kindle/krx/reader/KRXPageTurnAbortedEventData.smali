.class public Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;
.super Ljava/lang/Object;
.source "KRXPageTurnAbortedEventData.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;


# instance fields
.field private pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/events/PageTurnAbortedEvent;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    return-void
.end method

.method private createIBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->getBookItem()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->createIBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationType()Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->triedToSurpassEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_PREVIOUS:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    return-object v0
.end method

.method public getPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->triedToSurpassEnd()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPrevPageAvailable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;->pageTurnAbortedEvent:Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->triedToSurpassEnd()Z

    move-result v0

    return v0
.end method
