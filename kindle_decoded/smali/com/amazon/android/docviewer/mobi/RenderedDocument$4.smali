.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->applySettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiSettingsChanged()V

    .line 282
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiRefresh()V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$4;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_renderedDocListener:Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiNavigationFailed(I)V

    :cond_1
    :goto_0
    return-void
.end method
