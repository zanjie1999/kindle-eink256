.class public Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "BookReaderDocViewerEventHandler.java"

# interfaces
.implements Lcom/amazon/android/docviewer/PostBackRenderHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;
    }
.end annotation


# instance fields
.field m_postBackActions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public getPostBackAction(J)Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;
    .locals 3

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    iget-wide v0, v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_position:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    iget-wide v0, v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_position:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    iget-object p1, p1, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_action:Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDocViewerClearBack()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public onDocViewerWillNavigateBack(J)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->getPostBackAction(J)Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;->takeAction()V

    :cond_0
    return-void
.end method

.method public pushPostBackAction(JLcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V
    .locals 3

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    iget-wide v0, v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_position:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    new-instance v1, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;-><init>(Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;JLcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldRenderAfterGoingBack(J)Z
    .locals 3

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    iget-wide v0, v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_position:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    iget-wide v0, v0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_position:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->m_postBackActions:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;

    iget-object p1, p1, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler$BackActionStackEntry;->m_action:Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;->shouldRenderAfterGoingBack()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
