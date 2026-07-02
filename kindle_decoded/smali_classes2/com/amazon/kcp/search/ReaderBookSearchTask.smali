.class public Lcom/amazon/kcp/search/ReaderBookSearchTask;
.super Ljava/lang/Object;
.source "ReaderBookSearchTask.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;
    }
.end annotation


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->stopSearch()V

    return-void
.end method

.method performSearch(Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/IBookSearchController;->addBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V

    .line 63
    iget-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask;->query:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/IBookSearchController;->startSearch(Ljava/lang/String;)V

    return-void
.end method

.method public performSearch(Lcom/amazon/kindle/krx/search/IOnSearchListener;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/search/IOnSearchListener;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/ReaderBookSearchTask;->performSearch(Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;)V

    return-void
.end method
