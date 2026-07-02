.class Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;
.super Ljava/lang/Object;
.source "RemoteTodoFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/todo/RemoteTodoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchTodoForContentRunnable"
.end annotation


# instance fields
.field private final appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private final asin:Ljava/lang/String;

.field private final syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field final synthetic this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;Lcom/amazon/kcp/application/sync/internal/SyncType;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 164
    iput-object p3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->asin:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$200(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->asin:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$400(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->asin:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$500(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/foundation/internal/IObjectCallback;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$000(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    iget-object v2, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    iget-object v3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v4, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v5, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v5}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$500(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/foundation/internal/IObjectCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v6}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$600(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/callback/ICallback;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$700(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$002(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/kindle/webservices/IWebRequest;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 174
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-static {}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$100()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitting web request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v2}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$000(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$FetchTodoForContentRunnable;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v2}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$000(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 179
    :cond_2
    monitor-exit v0

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
