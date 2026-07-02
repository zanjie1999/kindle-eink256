.class public Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;
.super Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;
.source "PdfDocSearcher.java"


# instance fields
.field private m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    return-void
.end method


# virtual methods
.method public createSearchItem(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Lcom/amazon/kindle/search/KindleSearchItem;
    .locals 2

    .line 15
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfSearchItem;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocSearcher;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfSearchItem;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    return-object v0
.end method
