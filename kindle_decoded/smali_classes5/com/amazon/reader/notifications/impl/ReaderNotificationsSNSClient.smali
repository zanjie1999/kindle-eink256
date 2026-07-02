.class public Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;
.super Ljava/lang/Object;
.source "ReaderNotificationsSNSClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.reader.notifications.impl.ReaderNotificationsSNSClient"


# instance fields
.field private final amazonSnsServiceClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->amazonSnsServiceClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    return-void
.end method

.method private createEndpoint(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->amazonSnsServiceClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    invoke-virtual {v1, p1, p3, p2}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->createEndpoint(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    sget-object p2, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->TAG:Ljava/lang/String;

    const-string p3, "Successfully registered with SNS endpointArn: %s"

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;->getEndpointArn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 101
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;->getEndpointArn()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    new-instance p1, Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;

    const-string p2, "Null result returned by SNS"

    invoke-direct {p1, p2}, Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/sns/model/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Endpoint (.*) already exists with the same Token"

    .line 111
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 113
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 116
    :cond_1
    throw p1
.end method

.method private getEndpointArn(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p4}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->validateEndpointArn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p4

    .line 63
    :cond_0
    sget-object v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const-string p4, "Existing endpointArn %s unusable, creating a new one"

    invoke-static {p4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->createEndpoint(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 66
    invoke-direct {p0, p1, p4}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->validateEndpointArn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v3

    const-string p4, "Newly created endpointArn %s could not be located, retrying"

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->createEndpoint(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p4
.end method

.method private validateEndpointArn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 75
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->amazonSnsServiceClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->getEndPointAttributes(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;

    .line 83
    sget-object p1, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->TAG:Ljava/lang/String;

    const-string v0, "EndpointArn %s verified"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/sns/model/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1
.end method


# virtual methods
.method public register(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->getEndpointArn(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 53
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->amazonSnsServiceClient:Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->updateEndpoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Z

    return-object p4
.end method
