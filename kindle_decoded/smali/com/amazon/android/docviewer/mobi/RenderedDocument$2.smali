.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->destroy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

.field final synthetic val$cacheCurrentPage:Z


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Z)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;->val$cacheCurrentPage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getCurrentPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;->val$cacheCurrentPage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->writeToCache(Z)Z

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$101(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    .line 240
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$2;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->shutdown()V

    return-void
.end method
