.class Lcom/amazon/kindle/todo/RemoteTodoFetcher$1;
.super Ljava/lang/Object;
.source "RemoteTodoFetcher.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/todo/RemoteTodoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/kindle/webservices/IWebRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$1;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$1;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$000(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$1;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$002(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/kindle/webservices/IWebRequest;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 115
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web request is no longer pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher$1;->execute(Lcom/amazon/kindle/webservices/IWebRequest;)V

    return-void
.end method
