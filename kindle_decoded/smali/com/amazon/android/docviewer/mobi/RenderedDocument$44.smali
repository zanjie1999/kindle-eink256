.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$44;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/MobiPage$IKRFPageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->updateAdjacentPages(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V
    .locals 0

    .line 1230
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$44;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 4

    .line 1233
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$44;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_PREV_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 1234
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$44;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$4400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getPreviousPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    .line 1235
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$44;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_PREV_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    return-object v0
.end method
