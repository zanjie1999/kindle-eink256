.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;
.super Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;
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

    .line 1074
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
    .locals 3

    .line 1077
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$4200(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;->execute(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    .line 1083
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

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

    .line 1085
    invoke-interface {v2, p1}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->onMobiActiveAreaToggled(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    goto :goto_0

    .line 1087
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->getKRFCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$40$1;-><init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument$40;Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 1087
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
