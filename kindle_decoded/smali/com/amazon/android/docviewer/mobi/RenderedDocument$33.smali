.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;
.super Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;
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

    .line 901
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public postGotoPage()V
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    .line 955
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 956
    :try_start_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/IKRFListener;

    .line 957
    invoke-interface {v3, v1}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->postNavigation(I)V

    goto :goto_0

    .line 959
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$1300(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$4000(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$HistoryManagerInfo;->update(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V

    return-void

    :catchall_0
    move-exception v1

    .line 959
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postNextPage()V
    .locals 4

    .line 914
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    .line 915
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/IKRFListener;

    .line 917
    invoke-interface {v3, v1}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->postNavigation(I)V

    goto :goto_0

    .line 919
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

.method public postPreviousPage()V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    .line 935
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 936
    :try_start_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/IKRFListener;

    .line 937
    invoke-interface {v3, v1}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->postNavigation(I)V

    goto :goto_0

    .line 939
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

.method public preGotoPage()V
    .locals 4

    .line 944
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

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

    const/4 v3, 0x0

    .line 946
    invoke-interface {v2, v3}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->preNavigation(I)V

    goto :goto_0

    .line 948
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3900(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    return-void

    :catchall_0
    move-exception v1

    .line 948
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public preNextPage()V
    .locals 4

    .line 904
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 905
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

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

    const/4 v3, 0x1

    .line 906
    invoke-interface {v2, v3}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->preNavigation(I)V

    goto :goto_0

    .line 908
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3900(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    return-void

    :catchall_0
    move-exception v1

    .line 908
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prePreviousPage()V
    .locals 4

    .line 924
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

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

    const/4 v3, -0x1

    .line 926
    invoke-interface {v2, v3}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->preNavigation(I)V

    goto :goto_0

    .line 928
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$33;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3900(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V

    return-void

    :catchall_0
    move-exception v1

    .line 928
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
