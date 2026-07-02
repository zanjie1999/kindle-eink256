.class Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;
.super Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$MetricTrackingOnClickListener;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadSampleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 1

    .line 1726
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    const-string v0, "ClickedReadSample"

    .line 1727
    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$MetricTrackingOnClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1732
    invoke-super {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$MetricTrackingOnClickListener;->onClick(Landroid/view/View;)V

    .line 1734
    :try_start_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$900(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/BookActions;->CLICK_READ_SAMPLE:Lcom/amazon/ea/metrics/BookActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 1736
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 1737
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1200(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadNow"

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1300(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1738
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 1740
    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$500(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "]"

    const-string v3, "cannot read, book is not in library [asin="

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 1742
    :try_start_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1600(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1743
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1746
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1600(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;

    move-result-object v0

    .line 1747
    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/util/EABookShell;->setContentType(Lcom/amazon/kindle/krx/content/ContentType;)V

    .line 1749
    :cond_1
    new-instance p1, Lcom/amazon/ea/OneTapBookOpenRunnable;

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    .line 1750
    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1700(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/ea/OneTapBookOpenRunnable;-><init>(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;)V

    .line 1751
    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 1754
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1757
    :cond_3
    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1200(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadedBook"

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1761
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$900(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_READ_SAMPLE:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
