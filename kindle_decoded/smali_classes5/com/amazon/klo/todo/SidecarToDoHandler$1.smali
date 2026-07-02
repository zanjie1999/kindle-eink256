.class Lcom/amazon/klo/todo/SidecarToDoHandler$1;
.super Ljava/lang/Object;
.source "SidecarToDoHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/todo/SidecarToDoHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/todo/SidecarToDoHandler;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/klo/todo/SidecarToDoHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->this$0:Lcom/amazon/klo/todo/SidecarToDoHandler;

    iput-object p2, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$guid:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "x-amz-meta-asc-version"

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 8

    .line 120
    sget-object p1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->version:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->this$0:Lcom/amazon/klo/todo/SidecarToDoHandler;

    .line 126
    invoke-static {p1}, Lcom/amazon/klo/todo/SidecarToDoHandler;->access$000(Lcom/amazon/klo/todo/SidecarToDoHandler;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->isOdotSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/klo/todo/SidecarToDoHandler;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Acknowledging download"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p1, Lcom/amazon/klo/todo/OdotMessageExecutor;

    iget-object p2, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->this$0:Lcom/amazon/klo/todo/SidecarToDoHandler;

    .line 133
    invoke-static {p2}, Lcom/amazon/klo/todo/SidecarToDoHandler;->access$000(Lcom/amazon/klo/todo/SidecarToDoHandler;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$asin:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$guid:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->version:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$fileName:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->val$todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    .line 135
    invoke-interface {p2}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/klo/todo/OdotMessageExecutor;-><init>(Lcom/amazon/kindle/krx/messaging/IMessagingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->this$0:Lcom/amazon/klo/todo/SidecarToDoHandler;

    invoke-static {p2}, Lcom/amazon/klo/todo/SidecarToDoHandler;->access$000(Lcom/amazon/klo/todo/SidecarToDoHandler;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    .line 137
    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p2

    .line 138
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->this$0:Lcom/amazon/klo/todo/SidecarToDoHandler;

    invoke-static {p1}, Lcom/amazon/klo/todo/SidecarToDoHandler;->access$000(Lcom/amazon/klo/todo/SidecarToDoHandler;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 147
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshActionButtons()V

    .line 148
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderActionButtons()V

    :cond_1
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "x-amz-meta-asc-version"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iput-object p2, p0, Lcom/amazon/klo/todo/SidecarToDoHandler$1;->version:Ljava/lang/String;

    :cond_0
    return-void
.end method
