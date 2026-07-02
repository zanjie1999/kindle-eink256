.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;
.super Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;
.source "RenderedDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;
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

    .line 887
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChanged()V
    .locals 3

    .line 890
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_viewerInfo:Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3700(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/mobi/KRFDocViewerInfo;->update(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V

    .line 891
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$600(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    .line 892
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$32;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/IKRFListener;

    .line 894
    invoke-interface {v2}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->onPageChanged()V

    goto :goto_0

    .line 896
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
