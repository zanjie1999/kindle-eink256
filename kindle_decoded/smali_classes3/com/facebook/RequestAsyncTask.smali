.class public Lcom/facebook/RequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "RequestAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/facebook/Response;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static executeOnExecutorMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private exception:Ljava/lang/Exception;

.field private final requests:Lcom/facebook/RequestBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    const-class v0, Lcom/facebook/RequestAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    .line 46
    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 47
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "executeOnExecutor"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 49
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    aget-object v6, v5, v2

    const-class v7, Ljava/util/concurrent/Executor;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sput-object v4, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/facebook/RequestBatch;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, p1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    .line 124
    iput-object p1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .line 163
    :try_start_0
    iget-object p1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->executeAndWait()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-static {p1, v0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 169
    iput-object p1, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    const/4 p1, 0x0

    return-object p1
.end method

.method executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;
    .locals 5

    const/4 v0, 0x0

    .line 176
    :try_start_0
    sget-object v1, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    new-array v0, v0, [Ljava/lang/Void;

    .line 186
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 155
    iget-object p1, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "onPostExecute: exception encountered during request: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 143
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 145
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{RequestAsyncTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
