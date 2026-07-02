.class Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;
.super Ljava/lang/Object;
.source "PeriodicalContentListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;

.field final synthetic val$readerController:Lcom/amazon/kcp/reader/ReaderController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;Lcom/amazon/kcp/reader/ReaderController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;->this$0:Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;

    iput-object p2, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;->val$readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;->this$0:Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->access$000(Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;)Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "docviewer is null, not updating access time"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;->this$0:Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->access$000(Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;)Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;->val$readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ReaderController;->updateBookAccessAndNotify(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    :cond_1
    return-void
.end method
