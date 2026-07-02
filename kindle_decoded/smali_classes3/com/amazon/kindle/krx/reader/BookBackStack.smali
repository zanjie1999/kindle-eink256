.class public Lcom/amazon/kindle/krx/reader/BookBackStack;
.super Ljava/lang/Object;
.source "BookBackStack.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IBookBackStack;


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 13
    new-instance p1, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 15
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->addPostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V

    return-void
.end method


# virtual methods
.method public clearBackStack()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->onDocViewerClearBack()V

    return-void
.end method

.method public getPostBackAction()Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBackDepth()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->getPostBackAction(J)Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;

    move-result-object v0

    return-object v0
.end method

.method public pushPostBackAction(Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBackDepth()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->pushPostBackAction(JLcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V

    return-void
.end method

.method public removeEventHandler()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookBackStack;->clearBackStack()V

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookBackStack;->handler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->removePostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V

    return-void
.end method
