.class public Lcom/amazon/android/docviewer/BookDocSearcher;
.super Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;
.source "BookDocSearcher.java"


# instance fields
.field private m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amazon/android/docviewer/BookDocSearcher;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public createSearchItem(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Lcom/amazon/kindle/search/KindleSearchItem;
    .locals 2

    .line 13
    new-instance v0, Lcom/amazon/kindle/search/KindleSearchItem;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BookDocSearcher;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/search/KindleSearchItem;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    return-object v0
.end method
