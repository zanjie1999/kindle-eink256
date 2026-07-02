.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;


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

    .line 766
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMultimediaFilePathFromResourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 946
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 947
    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "luna_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onAudioAreaActivated(Ljava/lang/String;)V
    .locals 2

    .line 931
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->getMultimediaFilePathFromResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    .line 934
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->getInstance(Landroid/content/Context;Landroid/net/Uri;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->setControlViewAnchor(Landroid/widget/FrameLayout;)V

    .line 937
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 938
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->requestStart()V

    goto :goto_0

    .line 940
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->requestPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMobiActiveAreaSelection(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V
    .locals 3

    .line 890
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1102(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    .line 892
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3$1;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return-void
.end method

.method public onMobiActiveAreaToggled(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V
    .locals 0

    return-void
.end method

.method public onMobiBuyBook()V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 864
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerShowBookDetails()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMobiNavigationFailed(I)V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 912
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onNavigationOrSettingsChangeFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMobiNoteSelection(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    return-void
.end method

.method public onMobiOpenAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 884
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerOpenAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMobiOpenExternalLink(Ljava/lang/String;)V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    new-instance v1, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1400(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onMobiPositionChanged(IZ)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 790
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ACX_GOTO:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/util/Utils;->endChromeFirePerf(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    .line 794
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-nez v1, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshSearchResults()V

    .line 799
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 802
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_2

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->updateTocReadState()V

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1102(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    .line 808
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->toggleCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 826
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object p2, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->refreshCurrentPage()V

    .line 827
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object p2, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->refreshNextPage()V

    .line 828
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object p2, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->refreshPreviousPage()V

    goto :goto_1

    .line 830
    :cond_4
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p2, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1202(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z

    goto :goto_1

    .line 809
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 810
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object p2, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->onAfterNavigation(I)V

    .line 812
    :cond_6
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p2, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1202(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z

    .line 834
    :goto_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->sendPositionChangedEvent(ZI)V

    .line 835
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1302(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z

    return-void
.end method

.method public onMobiPositionWillChange(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1002(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->sendPositionChangedEvent(ZI)V

    return-void
.end method

.method public onMobiRefresh()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$902(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Z)Z

    return-void
.end method

.method public onMobiSettingsChanged()V
    .locals 5

    .line 848
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 849
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->onAfterNavigation(I)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 854
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onAfterSettingsChange()V

    goto :goto_0

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    new-instance v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1400(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onMobiShowBookDetails()V
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 871
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerShowBookDetails()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoAreaActivated(Ljava/lang/String;)V
    .locals 3

    .line 918
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->getMultimediaFilePathFromResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 919
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1700(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 921
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 922
    sget-object v1, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_RESOURCE_URI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    sget-object p1, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_INITIAL_POSITION:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    sget-object p1, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_SHOW_CONTROLS:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 926
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
