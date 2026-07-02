.class Lcom/amazon/kcp/debug/DebugActivity$36;
.super Landroid/os/AsyncTask;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onDownloadAllBooks(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kindle/content/ContentMetadata;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$builder:Landroid/app/Notification$Builder;

.field final synthetic val$notificationManager:Landroid/app/NotificationManager;

.field final synthetic val$total:I

.field final synthetic val$trailingText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/app/Notification$Builder;ILjava/lang/String;Landroid/app/NotificationManager;)V
    .locals 0

    .line 1927
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    iput p3, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$total:I

    iput-object p4, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$trailingText:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1927
    check-cast p1, [Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$36;->doInBackground([Ljava/util/Collection;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/util/Collection;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1932
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DEBUG;

    const-string v1, "DownloadAllLegacy"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DEBUG;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1933
    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1934
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1938
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    new-array v4, v2, [Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    .line 1939
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move v3, v5

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1927
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$36;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 1952
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1200()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1954
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All books"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$trailingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1955
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    const-string v0, "Enjoy!"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1956
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    const v0, 0x1080082

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1957
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1958
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1200()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 1946
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$total:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$trailingText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1947
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1200()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$36;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1927
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$36;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
