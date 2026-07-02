.class public Lcom/amazon/android/docviewer/pdf/PdfSearchItem;
.super Lcom/amazon/kindle/search/KindleSearchItem;
.source "PdfSearchItem.java"


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/search/KindleSearchItem;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    return-void
.end method


# virtual methods
.method public createBookSearchResult(Ljava/lang/String;IIIII)Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 9

    .line 32
    new-instance p4, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;

    iget-object v1, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v8, p0, Lcom/amazon/kindle/search/KindleSearchItem;->m_rawQuery:Ljava/lang/String;

    move-object v0, p4

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;IIIIILjava/lang/String;)V

    return-object p4
.end method
