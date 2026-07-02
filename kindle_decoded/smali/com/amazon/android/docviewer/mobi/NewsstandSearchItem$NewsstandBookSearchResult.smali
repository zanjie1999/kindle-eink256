.class public Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;
.super Lcom/amazon/android/docviewer/BookSearchResult;
.source "NewsstandSearchItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsstandBookSearchResult"
.end annotation


# instance fields
.field private final m_Viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Ljava/lang/String;IIIII)V
    .locals 8

    .line 26
    invoke-virtual {p1, p5}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->userLocationFromPosition(I)I

    move-result v7

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/BookSearchResult;-><init>(Ljava/lang/String;IIIIII)V

    .line 27
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;->m_Viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-void
.end method


# virtual methods
.method public gotoLocation()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;->m_Viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;->m_Viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->setSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem$NewsstandBookSearchResult;->m_Viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BookSearchResult;->getSearchStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPositionFromSearch(I)V

    :cond_0
    return-void
.end method
