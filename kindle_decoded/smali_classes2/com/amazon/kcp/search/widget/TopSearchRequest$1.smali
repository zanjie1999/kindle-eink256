.class Lcom/amazon/kcp/search/widget/TopSearchRequest$1;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "TopSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/widget/TopSearchRequest;-><init>(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/widget/TopSearchRequest;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/widget/TopSearchRequest;Ljava/io/File;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRequest;

    iput-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xc8

    if-eq v2, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRequest;

    invoke-static {p1}, Lcom/amazon/kcp/search/widget/TopSearchRequest;->access$000(Lcom/amazon/kcp/search/widget/TopSearchRequest;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/search/widget/TopSearchEvent;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/widget/TopSearchEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    .line 53
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRequest;

    invoke-static {p1}, Lcom/amazon/kcp/search/widget/TopSearchRequest;->access$000(Lcom/amazon/kcp/search/widget/TopSearchRequest;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/search/widget/TopSearchEvent;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/amazon/kcp/search/widget/TopSearchEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchRequest;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveResponseToFile error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRequest;

    invoke-static {p1}, Lcom/amazon/kcp/search/widget/TopSearchRequest;->access$000(Lcom/amazon/kcp/search/widget/TopSearchRequest;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/search/widget/TopSearchEvent;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/widget/TopSearchEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :goto_0
    return-void
.end method
