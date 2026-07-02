.class public Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;
.super Ljava/lang/Object;
.source "KRIFBookBoundaryListener.java"

# interfaces
.implements Lcom/amazon/krf/platform/BookBoundaryListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method private publishPageTurnAbortedEvent(Z)V
    .locals 5

    .line 39
    new-instance v0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v3, p0, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 40
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 41
    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;->publish()V

    return-void
.end method


# virtual methods
.method public onEndOfBookSurpassed()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".onEndofBookSurpassed invoked on thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;->publishPageTurnAbortedEvent(Z)V

    return-void
.end method

.method public onStartOfBookSurpassed()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".onStartOfBookSurpassed invoked on thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;->publishPageTurnAbortedEvent(Z)V

    return-void
.end method
