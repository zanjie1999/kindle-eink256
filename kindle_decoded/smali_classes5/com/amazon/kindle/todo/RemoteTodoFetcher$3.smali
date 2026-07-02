.class Lcom/amazon/kindle/todo/RemoteTodoFetcher$3;
.super Lcom/amazon/kindle/webservices/XmlResponseHandler;
.source "RemoteTodoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/RemoteTodoFetcher;->createRequest(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Z)Lcom/amazon/kindle/webservices/IWebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Lcom/amazon/foundation/internal/DefaultContentHandler;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$3;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    return-void
.end method


# virtual methods
.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 5

    const-string v0, "X-ADP-Call-After"

    .line 297
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x28

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 309
    invoke-static {}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-ADP-Call-After value ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s) larger than allowed ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 313
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received call after header with value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$3;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$800(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/internal/webservices/XADPCallAfterHelper;->parseServerValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
