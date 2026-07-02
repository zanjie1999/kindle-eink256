.class public Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;
.super Ljava/lang/Object;
.source "XrayTodoEventHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SidecarDownloadResponseHandler"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final bookId:Ljava/lang/String;

.field private final guid:Ljava/lang/String;

.field private final tmpSidecarFile:Ljava/io/File;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->bookId:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->asin:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->guid:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->tmpSidecarFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "x-amz-meta-asc-version"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 4

    .line 161
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    const-string v1, "]"

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Complete [statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 167
    iget-object p1, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->bookId:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->guid:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->tmpSidecarFile:Ljava/io/File;

    invoke-static {p1, p2, v0, v2}, Lcom/amazon/xray/model/SidecarDatabaseManager;->transferFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 170
    iget-object p1, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->version:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->isOdotSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    invoke-static {}, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Acknowledging download [asin="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->asin:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->version:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    new-instance p1, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;

    iget-object p2, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->guid:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->version:Ljava/lang/String;

    const-string v2, "entities"

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/xray/plugin/util/MessagingUtil;->send(Lcom/amazon/xray/plugin/util/MessagingUtil$Message;)Z

    :cond_2
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 187
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Header. name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "x-amz-meta-asc-version"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    iput-object p2, p0, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler$SidecarDownloadResponseHandler;->version:Ljava/lang/String;

    :cond_1
    return-void
.end method
