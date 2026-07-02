.class Lcom/amazon/kcp/reader/ReaderController$3;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$closePreviousEbook:Z

.field final synthetic val$intentParameters:Landroid/os/Bundle;

.field final synthetic val$libraryOrigin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController$3;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$closePreviousEbook:Z

    iput-object p4, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$libraryOrigin:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$intentParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ReaderController.executePrepareOpenReaderCommand()-invokeLater"

    const/4 v1, 0x1

    .line 572
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 573
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController$3;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$closePreviousEbook:Z

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$libraryOrigin:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/reader/ReaderController;->access$000(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$intentParameters:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 575
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController$3;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController$3;->val$activity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/amazon/kcp/reader/ReaderController;->access$100(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 578
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
