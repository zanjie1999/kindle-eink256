.class Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;
.super Ljava/lang/Object;
.source "PageRenderDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->render(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

.field final synthetic val$pageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/IPageProvider;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->val$pageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    const-string v1, "PageRenderDrawable.render().renderRunnable.run()"

    .line 388
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 390
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v2, v2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getWidth()I

    move-result v3

    .line 392
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getHeight()I

    move-result v4

    .line 393
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getBackgroundColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/krfhacks/KRFHacks;->intFromColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)I

    move-result v2

    .line 395
    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v5, v5, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_renderElement:Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->val$pageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-interface {v5, v3, v4, v2, v6}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->render(IIILcom/amazon/android/docviewer/mobi/IPageProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->postRender()V

    .line 401
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->val$pageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v5, v5, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v5}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;-><init>(Lcom/amazon/android/docviewer/IDocumentPage;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_range:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    .line 402
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->access$102(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    .line 403
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iput-boolean v0, v2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->renderElementReady:Z

    .line 404
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->notifyPageRendered()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->this$0:Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$2;->val$pageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    iput-object v2, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    const/4 v0, 0x0

    .line 411
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
