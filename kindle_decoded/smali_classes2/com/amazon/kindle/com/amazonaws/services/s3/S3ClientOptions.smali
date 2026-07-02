.class public Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;
.source "S3ClientOptions.java"


# instance fields
.field private final accelerateModeEnabled:Z

.field private final chunkedEncodingDisabled:Z

.field private final dualstackEnabled:Z

.field private pathStyleAccess:Z

.field private final payloadSigningEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    .line 190
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->chunkedEncodingDisabled:Z

    .line 191
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    .line 192
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->payloadSigningEnabled:Z

    .line 193
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->dualstackEnabled:Z

    return-void
.end method


# virtual methods
.method public isAccelerateModeEnabled()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->accelerateModeEnabled:Z

    return v0
.end method

.method public isDualstackEnabled()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->dualstackEnabled:Z

    return v0
.end method

.method public isPathStyleAccess()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/S3ClientOptions;->pathStyleAccess:Z

    return v0
.end method
