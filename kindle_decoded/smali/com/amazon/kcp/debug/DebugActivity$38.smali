.class Lcom/amazon/kcp/debug/DebugActivity$38;
.super Landroid/os/AsyncTask;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onRemoveLocalBooks(Landroid/view/View;)V
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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/app/Notification$Builder;Landroid/app/NotificationManager;)V
    .locals 0

    .line 2004
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2004
    check-cast p1, [Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$38;->doInBackground([Ljava/util/Collection;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/util/Collection;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2009
    aget-object p1, p1, v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    .line 2010
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v4

    .line 2011
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/amazon/kcp/library/ILibraryController;->deleteBook(Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Integer;

    add-int/lit8 v4, v2, 0x1

    .line 2012
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2004
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$38;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 2025
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1200()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2027
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    const-string v0, "All books removed!"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2028
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    const-string v0, "You Monster!"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2029
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    const v0, 0x1080082

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2030
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 2031
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1200()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 2019
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " books removed..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2020
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1200()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$38;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 2004
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$38;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
