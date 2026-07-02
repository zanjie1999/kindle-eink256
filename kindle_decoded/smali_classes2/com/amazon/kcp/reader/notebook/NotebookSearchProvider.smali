.class public Lcom/amazon/kcp/reader/notebook/NotebookSearchProvider;
.super Ljava/lang/Object;
.source "NotebookSearchProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchProvider;


# static fields
.field private static final SEARCH_PROVIDER_PRIORITY:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/search/ISearchAdapter;
    .locals 4

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 51
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 56
    :cond_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 61
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 66
    :cond_4
    sget-object v3, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;

    invoke-direct {v0, v2, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)V

    return-object v0

    :cond_5
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x3e8

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
