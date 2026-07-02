.class Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;
.super Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/helper/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadFreeSampleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    .locals 1

    .line 1766
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    const-string v0, "ClickedReadFreeSample"

    .line 1767
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1772
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;->onClick(Landroid/view/View;)V

    .line 1774
    :try_start_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/BookActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 1776
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 1777
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1779
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1781
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1782
    invoke-static {}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot read, book is not in library [asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1785
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object p1

    .line 1786
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/util/EABookShell;->setContentType(Lcom/amazon/kindle/krx/content/ContentType;)V

    .line 1789
    :cond_1
    new-instance v0, Lcom/amazon/ea/OneTapBookOpenRunnable;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    .line 1790
    invoke-static {v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1700(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/ea/OneTapBookOpenRunnable;-><init>(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;)V

    .line 1791
    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1793
    invoke-static {}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;->this$0:Lcom/amazon/ea/ui/helper/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
