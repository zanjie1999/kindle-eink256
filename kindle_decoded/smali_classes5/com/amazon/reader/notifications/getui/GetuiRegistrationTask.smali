.class public Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;
.super Ljava/lang/Object;
.source "GetuiRegistrationTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callbacks:Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;

.field private final context:Landroid/content/Context;

.field private final deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

.field private final messageBuilder:Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;

.field private final snsClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V
    .locals 7

    .line 37
    new-instance v5, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    invoke-direct {v5}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;-><init>()V

    new-instance v6, Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;

    invoke-direct {v6}, Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->token:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->callbacks:Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;

    .line 57
    iput-object p1, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->context:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    .line 59
    iput-object p5, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->snsClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    .line 60
    iput-object p6, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->messageBuilder:Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "GetuiRegistrationTopicArn"

    .line 66
    iget-object v1, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->getValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->messageBuilder:Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;

    iget-object v2, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->token:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;->createGetuiRegistrationMessage(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Getui registration (message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to SNS (topicArn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->snsClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    iget-object v3, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->publish(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getui registration successful. MessageId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->callbacks:Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;

    invoke-interface {v0}, Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->TAG:Ljava/lang/String;

    const-string v2, "Error while registering Getui"

    invoke-static {v1, v2, v0}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/reader/notifications/getui/GetuiRegistrationTask;->callbacks:Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;

    invoke-interface {v1, v0}, Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;->onFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
