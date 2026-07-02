.class public Lcom/amazon/kcp/events/PageTurnAbortedEvent;
.super Lcom/amazon/kcp/events/AbstractDocViewerEvent;
.source "PageTurnAbortedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private final m_currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final m_currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final m_triedToSurpassEnd:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/events/AbstractDocViewerEvent;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 22
    iput-object p2, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 23
    iput-object p3, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 24
    iput-boolean p4, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_triedToSurpassEnd:Z

    return-void
.end method


# virtual methods
.method public getBookItem()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0
.end method

.method public getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    iget-boolean v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_triedToSurpassEnd:Z

    if-eqz v0, :cond_0

    const-string v0, "end"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "start"

    .line 63
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageTurnAbortedEventData [swipe beyond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of book. page start="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", page end="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", m_bookItemID="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 66
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triedToSurpassEnd()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;->m_triedToSurpassEnd:Z

    return v0
.end method
