.class public Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;
.super Ljava/lang/Object;
.source "InternalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig$Factory;
    }
.end annotation


# static fields
.field private static final SERVICE_REGION_DELIMITOR:Ljava/lang/String; = "/"

.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private final defaultSignerConfig:Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

.field private final hostRegexToRegionMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final regionSigners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceRegionSigners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceSigners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getDefaultSigner()Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->defaultSignerConfig:Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    .line 45
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getDefaultRegionSigners()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->regionSigners:Ljava/util/Map;

    .line 46
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getDefaultServiceSigners()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->serviceSigners:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getDefaultServiceRegionSigners()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->serviceRegionSigners:Ljava/util/Map;

    .line 48
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getDefaultHttpClients()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->httpClients:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getDefaultHostRegexToRegionMappings()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->hostRegexToRegionMappings:Ljava/util/List;

    return-void
.end method

.method private static getDefaultHostRegexToRegionMappings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string/jumbo v2, "us-east-1"

    const-string v3, "(.+\\.)?s3\\.amazonaws\\.com"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v3, "(.+\\.)?s3-external-1\\.amazonaws\\.com"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com"

    const-string/jumbo v3, "us-gov-west-1"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getDefaultHttpClients()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "monitoring"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCloudWatchClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "logs"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCloudWatchLogsClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "sdb"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonSimpleDBClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "email"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonSimpleEmailServiceClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "sts"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AWSSecurityTokenServiceClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "cognito-identity"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCognitoIdentityClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "cognito-idp"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCognitoIdentityProviderClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "cognito-sync"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCognitoSyncClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "firehose"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonKinesisFirehoseClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "execute-api"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AWSIotClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "runtime.lex"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonLexRuntimeClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "mobiletargeting"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonPinpointClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "mobileanalytics"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonPinpointAnalyticsClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string/jumbo v2, "transcribe"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTranscribeClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string/jumbo v2, "translate"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTranslateClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "comprehend"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonComprehendClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "kinesisvideo"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AWSKinesisVideoArchivedMediaClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultRegionSigners()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v2, "AWS4SignerType"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "eu-central-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "cn-north-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultServiceRegionSigners()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v2, "AWSS3V4SignerType"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/eu-central-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/cn-north-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/us-east-2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/ca-central-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/ap-south-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/ap-northeast-2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "s3/eu-west-2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultServiceSigners()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v2, "QueryStringSignerType"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "ec2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS3SignerType"

    invoke-direct {v1, v3}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "email"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v3, "S3SignerType"

    invoke-direct {v1, v3}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "sdb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v2, "AmazonLexV4Signer"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "runtime.lex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v2, "AmazonPollyCustomPresigner"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "polly"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultSigner()Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;
    .locals 2

    .line 164
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    const-string v1, "AWS4SignerType"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getHostRegexToRegionMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->hostRegexToRegionMappings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClientConfig(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->httpClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    return-object p1
.end method

.method public getSignerConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->serviceRegionSigners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    if-eqz v0, :cond_0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->regionSigners:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    if-eqz p2, :cond_1

    return-object p2

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->serviceSigners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    if-nez p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->defaultSignerConfig:Lcom/amazon/kindle/com/amazonaws/internal/config/SignerConfig;

    :cond_2
    return-object p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
