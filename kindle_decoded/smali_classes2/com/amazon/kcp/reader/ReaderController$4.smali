.class Lcom/amazon/kcp/reader/ReaderController$4;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderController;->getBookOpenCallable(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$openIntent:Landroid/content/Intent;

.field final synthetic val$requestCode:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Ljava/lang/Integer;Landroid/content/Intent;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$requestCode:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$openIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    .line 782
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 783
    invoke-static {v1}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "contentFormat"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 787
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->isBookTransferring(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderController;->access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;

    move-result-object v0

    .line 789
    :cond_0
    sget-object v2, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    sget v3, Lcom/amazon/kindle/krl/R$string;->transfer_book_open_error_title:I

    .line 790
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$string;->transfer_book_open_error_description:I

    .line 791
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 789
    invoke-static {v2, v3, v4, v0}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 792
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v1

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v0, :cond_2

    .line 797
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getKRFVersion()Lcom/amazon/kindle/model/content/KRFVersion;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/KRFVersion;->KRF5:Lcom/amazon/kindle/model/content/KRFVersion;

    if-ne v0, v2, :cond_3

    .line 803
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isYJSupportedOnDevice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderController;->access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$string;->error_title_open_incompatible_version:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ReaderController;->access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->error_message_open_incompatible_version:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v3, v4, v0, v2}, Lcom/amazon/kcp/reader/ReaderController;->access$300(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$requestCode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$openIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Lcom/amazon/kcp/reader/ReaderController;->access$400(Lcom/amazon/kcp/reader/ReaderController;Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$openIntent:Landroid/content/Intent;

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/reader/ReaderController;->access$500(Lcom/amazon/kcp/reader/ReaderController;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    .line 812
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 814
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 816
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderController;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 818
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderController;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to open book in ReaderController"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ReaderController;->access$700(Lcom/amazon/kcp/reader/ReaderController;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_b

    .line 823
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderController;->access$700(Lcom/amazon/kcp/reader/ReaderController;)Z

    move-result v0

    const-string v2, "CLibraryPage"

    if-eqz v0, :cond_9

    .line 824
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "OpenBookExpired"

    invoke-virtual {v0, v2, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 826
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderController;->access$800(Lcom/amazon/kcp/reader/ReaderController;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 827
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v0, v2}, Lcom/amazon/kcp/reader/ReaderController;->access$900(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    goto/16 :goto_2

    .line 829
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderController;->access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$string;->error_title_open_expired_book:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ReaderController;->access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->error_message_open_expired_book:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v3, v4, v0, v2}, Lcom/amazon/kcp/reader/ReaderController;->access$300(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 834
    :cond_9
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v0}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenBookFailed-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v3, v2, v0, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 840
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v0, :cond_a

    .line 842
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderController;->access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$string;->error_title_open_book:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 843
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ReaderController;->access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->error_message_open_book:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 845
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController$4;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$4;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v3, v4, v0, v2}, Lcom/amazon/kcp/reader/ReaderController;->access$300(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_a
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IBookLockManager;->unLock()V

    :cond_b
    return-object v1
.end method
