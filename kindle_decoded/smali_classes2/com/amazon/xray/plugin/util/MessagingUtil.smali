.class public Lcom/amazon/xray/plugin/util/MessagingUtil;
.super Ljava/lang/Object;
.source "MessagingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/plugin/util/MessagingUtil$Message;
    }
.end annotation


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.util.MessagingUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static send(Lcom/amazon/xray/plugin/util/MessagingUtil$Message;)Z
    .locals 6

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/xray/plugin/util/MessagingUtil$Message;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 39
    invoke-interface {p0}, Lcom/amazon/xray/plugin/util/MessagingUtil$Message;->getTopic()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    sget-object v3, Lcom/amazon/xray/plugin/util/MessagingUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending Odot message [topic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", payloadString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v1

    new-array v3, v0, [Lcom/amazon/dcp/messaging/DeliveryOption;

    invoke-interface {v1, p0, v2, v3}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 47
    sget-object v1, Lcom/amazon/xray/plugin/util/MessagingUtil;->TAG:Ljava/lang/String;

    const-string v2, "Exception sending Odot message"

    invoke-static {v1, v2, p0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
