.class Lcom/facebook/Session$AutoPublishAsyncTask;
.super Landroid/os/AsyncTask;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPublishAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mApplicationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1855
    iput-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1856
    iput-object p2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    .line 1857
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1851
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 1863
    :try_start_0
    iget-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Facebook-publish"

    .line 1865
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1851
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 1873
    iget-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    monitor-enter p1

    .line 1874
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/Session;->access$1802(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)Lcom/facebook/Session$AutoPublishAsyncTask;

    .line 1875
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
