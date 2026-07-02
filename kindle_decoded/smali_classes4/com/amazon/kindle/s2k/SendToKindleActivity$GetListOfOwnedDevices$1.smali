.class Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$1;
.super Lcom/amazon/kindle/webservices/XmlResponseHandler;
.source "SendToKindleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;)V
    .locals 0

    .line 1202
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$1;->this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpStatusCodeReceived(I)V
    .locals 4

    .line 1206
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpStatusCodeReceived(I)V

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 1210
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetOwnedListOfDevices API call status code received - statusCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1214
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetOwnedListOfDevices API call - ERROR connecting service - statusCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
