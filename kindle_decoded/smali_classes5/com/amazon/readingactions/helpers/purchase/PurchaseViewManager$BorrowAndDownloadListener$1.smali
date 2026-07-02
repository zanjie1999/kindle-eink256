.class Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener$1;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener$1;->this$1:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1616
    :try_start_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener$1;->this$1:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;

    iget-object v1, v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 1617
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->downloadBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1619
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$1900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener$1;->this$1:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;

    iget-object v0, v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;->this$0:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->access$900(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/metrics/ClickListenerErrorActions;->ERROR_BORROW_AND_DOWNLOAD:Lcom/amazon/ea/metrics/ClickListenerErrorActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    :goto_0
    return-void
.end method
