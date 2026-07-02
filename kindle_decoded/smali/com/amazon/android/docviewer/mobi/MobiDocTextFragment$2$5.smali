.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->executeActiveArea(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

.field final synthetic val$activeArea:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;->val$activeArea:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 678
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;->val$activeArea:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getType()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 679
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$700(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/mobi/RenderedDocument$RenderedDocListener;->onMobiPositionWillChange(I)V

    .line 686
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_EXECUTE_ACTIVE_AREA:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v1, v1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;->val$activeArea:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->execute()V

    .line 690
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_EXECUTE_ACTIVE_AREA:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;

    iget-object v1, v1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
