.class public final Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;
.super Ljava/lang/Object;
.source "MobileWeblabRuntimeConfiguration.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;
.implements Lcom/amazon/weblab/mobile/settings/ICacheConfiguration;


# static fields
.field private static final DEFAULT_CACHE_POLICY:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

.field private static final DEFAULT_CLEAN_UP_AT_INIT:Z = false

.field private static final DEFAULT_ENDPOINT:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

.field private static final DEFAULT_MAX_THREADS:I = 0x4

.field private static final DEFAULT_REPOSITORY_TYPE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

.field private static final DEFAULT_RETRIES:I = 0x1

.field private static final DEFAULT_TTL:Lcom/amazon/weblab/mobile/settings/Interval;

.field private static final DEFAULT_UPDATE_AT_INIT:Z = true

.field private static final MAX_NUMBER_OF_RETRIES:I = 0xa

.field private static final MAX_NUMBER_OF_THREADS:I = 0xa


# instance fields
.field private mCleanUpAtInit:Z

.field private mDirectory:Ljava/lang/String;

.field private mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

.field private mMaxDegree:I

.field private mRepositoryType:Lcom/amazon/weblab/mobile/repository/RepositoryType;

.field private mRetries:I

.field private mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

.field private mUpdateAtInit:Z

.field private mUpdatePolicy:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/amazon/weblab/mobile/settings/Interval;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5a0

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/weblab/mobile/settings/Interval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_TTL:Lcom/amazon/weblab/mobile/settings/Interval;

    .line 16
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->AUTO:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_CACHE_POLICY:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    .line 19
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->PROD:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_ENDPOINT:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    .line 22
    sget-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;->FILE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_REPOSITORY_TYPE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/weblab/mobile/settings/Interval;IILcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;ZZLcom/amazon/weblab/mobile/repository/RepositoryType;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    .line 53
    iput p2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRetries:I

    .line 54
    iput p3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mMaxDegree:I

    .line 55
    iput-object p4, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdatePolicy:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    .line 56
    iput-object p5, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    .line 57
    iput-boolean p6, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mCleanUpAtInit:Z

    .line 58
    iput-boolean p7, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdateAtInit:Z

    .line 59
    iput-object p8, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRepositoryType:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    .line 60
    invoke-virtual {p0, p9}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->setDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;)V
    .locals 10

    .line 64
    iget-object v1, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    iget v2, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRetries:I

    iget v3, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mMaxDegree:I

    iget-object v4, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdatePolicy:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    iget-object v5, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    iget-boolean v6, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mCleanUpAtInit:Z

    iget-boolean v7, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdateAtInit:Z

    .line 66
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->getRepositoryType()Lcom/amazon/weblab/mobile/repository/RepositoryType;

    move-result-object v8

    iget-object v9, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mDirectory:Ljava/lang/String;

    move-object v0, p0

    .line 64
    invoke-direct/range {v0 .. v9}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;-><init>(Lcom/amazon/weblab/mobile/settings/Interval;IILcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;ZZLcom/amazon/weblab/mobile/repository/RepositoryType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    .line 41
    sget-object v1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_TTL:Lcom/amazon/weblab/mobile/settings/Interval;

    sget-object v4, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_CACHE_POLICY:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    sget-object v5, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_ENDPOINT:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    sget-object v8, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->DEFAULT_REPOSITORY_TYPE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;-><init>(Lcom/amazon/weblab/mobile/settings/Interval;IILcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;ZZLcom/amazon/weblab/mobile/repository/RepositoryType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 281
    instance-of v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    check-cast p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;

    .line 283
    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mDirectory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mMaxDegree:I

    iget v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mMaxDegree:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRetries:I

    iget v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRetries:I

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    .line 284
    invoke-virtual {v0, v2}, Lcom/amazon/weblab/mobile/settings/Interval;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdatePolicy:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdatePolicy:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mCleanUpAtInit:Z

    iget-boolean v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mCleanUpAtInit:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdateAtInit:Z

    iget-boolean v2, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdateAtInit:Z

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRepositoryType:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRepositoryType:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCachePolicy()Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdatePolicy:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpoint()Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    return-object v0
.end method

.method public getMaxDegreeOfParallelism()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mMaxDegree:I

    return v0
.end method

.method public getNetworkRetries()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRetries:I

    return v0
.end method

.method public getRepositoryType()Lcom/amazon/weblab/mobile/repository/RepositoryType;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRepositoryType:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    return-object v0
.end method

.method public getTtl()Lcom/amazon/weblab/mobile/settings/Interval;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 268
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mCleanUpAtInit:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-object v4, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mDirectory:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v4, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Enum;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget v4, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mMaxDegree:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget v4, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mRetries:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v4, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/settings/Interval;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-boolean v4, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdateAtInit:Z

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x4d5

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdatePolicy:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v5

    :goto_5
    add-int/2addr v0, v5

    return v0
.end method

.method public isCleanUpAtInitEnabled()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mCleanUpAtInit:Z

    return v0
.end method

.method public isUpdateAtInitEnabled()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdateAtInit:Z

    return v0
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mDirectory:Ljava/lang/String;

    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application needs read and write access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a directory"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "directory cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndpoint(Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    iput-object p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mEndpoint:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    return-void

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "endpoint cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpdateAtInitEnabled(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabRuntimeConfiguration;->mUpdateAtInit:Z

    return-void
.end method
