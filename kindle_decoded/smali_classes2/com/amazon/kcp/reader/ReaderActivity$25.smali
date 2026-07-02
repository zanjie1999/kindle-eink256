.class Lcom/amazon/kcp/reader/ReaderActivity$25;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onLocalBookItemEvent(Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
    .locals 0

    .line 3912
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3915
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v0, v1, :cond_0

    .line 3918
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2300(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3919
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$2400(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3921
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    goto :goto_0

    .line 3926
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3927
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->val$event:Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getSyncType()Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LprSyncType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->sync_same_page_read:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FprMrprMessage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3929
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$25;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(ILandroid/os/Bundle;)Z

    :cond_1
    :goto_0
    return-void
.end method
