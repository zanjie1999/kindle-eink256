.class public Lcom/amazon/kcp/search/ReaderBookSearchProvider;
.super Ljava/lang/Object;
.source "ReaderBookSearchProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchProvider;


# static fields
.field private static final SEARCH_PROVIDER_PRIORITY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/search/ISearchAdapter;
    .locals 1

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance v0, Lcom/amazon/kcp/search/ReaderBookSearchAdapter;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/ReaderBookSearchAdapter;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/ReaderBookSearchProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/ReaderBookSearchProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
