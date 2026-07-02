.class Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$6;
.super Lcom/amazon/kindle/webservices/XmlResponseHandler;
.source "SendToKindleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->onUploadFileSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$6;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpStatusCodeReceived(I)V
    .locals 4

    .line 357
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpStatusCodeReceived(I)V

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 361
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendToKindle API call status code received - statusCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendToKindle API call - ERROR connecting service - statusCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
