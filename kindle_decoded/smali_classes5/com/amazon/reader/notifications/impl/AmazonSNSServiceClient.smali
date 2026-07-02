.class public Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;
.super Ljava/lang/Object;
.source "AmazonSNSServiceClient.java"


# static fields
.field private static final APPLICATION_ARN_KEY:Ljava/lang/String; = "ApplicationArn"

.field private static final AWS_IDENTITY_POOL_ID_KEY:Ljava/lang/String; = "AwsIdentityPoolId"

.field private static final CUSTOM_DATA_KEY:Ljava/lang/String; = "CustomUserData"

.field private static final ENABLED_KEY:Ljava/lang/String; = "Enabled"

.field private static final ENABLED_TRUE_KEY:Ljava/lang/String; = "true"

.field private static final SNS_ENDPOINT_KEY:Ljava/lang/String; = "SnsEndpoint"

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_KEY:Ljava/lang/String; = "Token"


# instance fields
.field private snsClient:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/reader/notifications/impl/SettingsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->snsClient:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    return-void
.end method

.method private createPlatformEndpointRequest(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;
    .locals 3

    .line 155
    invoke-static {p2}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->serializeUnchecked(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;

    move-result-object p2

    .line 156
    sget-object v0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Registering to %s with %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;-><init>()V

    .line 159
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setCustomUserData(Ljava/lang/String;)V

    const-string p2, "ApplicationArn"

    .line 161
    invoke-static {p2, p1}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->getValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setPlatformApplicationArn(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSNSClient(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->snsClient:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;

    const-string v1, "AwsIdentityPoolId"

    .line 134
    invoke-static {v1, p1}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->getValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/regions/Regions;)V

    .line 137
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V

    iput-object v1, p0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->snsClient:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    const-string v0, "SnsEndpoint"

    .line 138
    invoke-static {v0, p1}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->getValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setEndpoint(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->snsClient:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    return-object p1
.end method


# virtual methods
.method public createEndpoint(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Creating Platform Endpoint"

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->serializeUnchecked(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Custom data attributes: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->getSNSClient(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    move-result-object v0

    .line 71
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->createPlatformEndpointRequest(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;

    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->createPlatformEndpoint(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CreatePlatformEndpointResult;

    move-result-object p1

    return-object p1
.end method

.method public getEndPointAttributes(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;
    .locals 3

    .line 113
    sget-object v0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving endpoint data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->getSNSClient(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    move-result-object p1

    .line 116
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;-><init>()V

    .line 117
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;->withEndpointArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;

    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->getEndpointAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetEndpointAttributesResult;

    move-result-object p1

    return-object p1
.end method

.method public publish(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;
    .locals 1

    .line 176
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;

    invoke-direct {v0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->getSNSClient(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->publish(Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PublishResult;

    move-result-object p1

    return-object p1
.end method

.method public updateEndpoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Z
    .locals 5

    .line 86
    sget-object v0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string v4, "Updating endpoint %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p4}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->serializeUnchecked(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;

    move-result-object p4

    .line 89
    sget-object v0, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p4, v2, v3

    const-string v3, "Custom data attributes: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/reader/notifications/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;->getSNSClient(Landroid/content/Context;)Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;

    move-result-object p1

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Token"

    .line 94
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Enabled"

    const-string/jumbo v2, "true"

    .line 95
    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "CustomUserData"

    .line 96
    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;

    invoke-direct {p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;-><init>()V

    .line 99
    invoke-virtual {p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->withEndpointArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;

    move-result-object p2

    .line 100
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;->withAttributes(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;

    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->setEndpointAttributes(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SetEndpointAttributesRequest;)V

    return v1
.end method
