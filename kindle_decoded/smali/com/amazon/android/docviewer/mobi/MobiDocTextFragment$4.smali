.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;
.super Lcom/amazon/android/docviewer/mobi/BaseKRFListener;
.source "MobiDocTextFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BaseKRFListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobiActiveAreaToggled(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$300(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$400(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z

    .line 995
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$300(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v0

    .line 996
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->getOrdinal()I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$500(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    goto :goto_0

    .line 999
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object p1, p1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->setInToggleOffTransient(Z)V

    if-eqz v0, :cond_1

    .line 1000
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->isOn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1001
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;->toggle()V

    .line 1003
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$500(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    .line 1010
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->getKRFCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1020
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->postMobiActiveAreToggled()V

    return-void
.end method

.method public onPageChanged()V
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    .line 963
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 964
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->cancelTask()V

    .line 965
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 968
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1502(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public onTableShift(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V
    .locals 0

    const/4 p1, 0x0

    .line 987
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->postNavigation(I)V

    return-void
.end method

.method public postNavigation(I)V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;I)V

    return-void
.end method

.method public preNavigation(I)V
    .locals 1

    .line 975
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$300(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$400(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z

    return-void
.end method
