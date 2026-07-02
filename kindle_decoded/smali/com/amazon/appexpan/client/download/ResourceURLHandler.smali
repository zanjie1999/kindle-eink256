.class public Lcom/amazon/appexpan/client/download/ResourceURLHandler;
.super Ljava/lang/Object;
.source "ResourceURLHandler.java"


# static fields
.field private static BUCKET_NAME:Ljava/lang/String; = "maes-appexpan-protected-prod"

.field private static CN_GAMMA_IDENTITY_POOL_ID:Ljava/lang/String; = "cn-north-1:8364508f-3aa4-480c-bf7d-fc721b603589"

.field private static CN_IDENTITY_POOL_ID:Ljava/lang/String; = "cn-north-1:caa1d64c-2b17-42af-9e1c-db88707cd980"

.field private static GAMMA_BUCKET_NAME:Ljava/lang/String; = "maes-appexpan-protected-preprod"

.field private static GAMMA_IDENTITY_POOL_ID:Ljava/lang/String; = "us-east-1:dc906c74-f07d-4d4d-855c-8dce6d707134"

.field private static IDENTITY_POOL_ID:Ljava/lang/String; = "us-east-1:633490b1-3ba5-4df6-a9cf-6f512b620d90"

.field private static URL_EXPIRY_IN_MILLISECONDS:I = 0x1b7740

.field private static forceFetch:Z = false


# instance fields
.field private final context:Landroid/content/Context;

.field private final debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

.field private s3Client:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/appexpan/client/util/DebugSettings;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->s3Client:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    .line 69
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    return-void
.end method

.method private generateS3Url(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    .line 107
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->GAMMA_BUCKET_NAME:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->BUCKET_NAME:Ljava/lang/String;

    .line 109
    :goto_0
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->getS3Client()Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget v5, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->URL_EXPIRY_IN_MILLISECONDS:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "/"

    .line 114
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 120
    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;

    move-result-object p1

    goto :goto_1

    .line 126
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;

    move-result-object p1

    .line 132
    :goto_1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getS3Client()Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->s3Client:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->forceFetch:Z

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    .line 143
    sput-boolean v0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->forceFetch:Z

    const-string v0, "KFC"

    .line 145
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;

    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    .line 150
    invoke-virtual {v2}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->CN_GAMMA_IDENTITY_POOL_ID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->CN_IDENTITY_POOL_ID:Ljava/lang/String;

    :goto_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/regions/Regions;)V

    .line 154
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-static {v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getRegion(Lcom/amazon/kindle/com/amazonaws/regions/Regions;)Lcom/amazon/kindle/com/amazonaws/regions/Region;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/regions/Region;)V

    iput-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->s3Client:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    goto :goto_2

    .line 158
    :cond_2
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;

    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    .line 161
    invoke-virtual {v2}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->GAMMA_IDENTITY_POOL_ID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->IDENTITY_POOL_ID:Ljava/lang/String;

    :goto_1
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/regions/Regions;)V

    .line 164
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-static {v2}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getRegion(Lcom/amazon/kindle/com/amazonaws/regions/Regions;)Lcom/amazon/kindle/com/amazonaws/regions/Region;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;Lcom/amazon/kindle/com/amazonaws/regions/Region;)V

    iput-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->s3Client:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;

    .line 168
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->s3Client:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3Client;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getUriForResource(Lcom/amazon/appexpan/client/model/ResourceModel;)Landroid/net/Uri;
    .locals 3

    .line 83
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PUBLIC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PROTECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->generateS3Url(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
