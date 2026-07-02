.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$2;
.super Ljava/lang/Object;
.source "PageRenderDrawableArray.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IPageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
        "Lcom/amazon/android/docviewer/mobi/MobiPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$2;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$2;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    return-object p1
.end method

.method public getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageProviderForRendering()Lcom/amazon/android/docviewer/mobi/IPageProvider;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->NEXT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiPage;

    return-object v0
.end method

.method public getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
