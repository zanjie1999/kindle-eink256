.class public final Lcom/audible/pfm/domain/DevicePlatformConfig;
.super Ljava/lang/Object;
.source "DevicePlatformConfig.java"


# instance fields
.field private devicePlatform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_platform"
    .end annotation
.end field

.field private lastModifiedFileTimeMillis:J

.field private nextDownloadPeriodSecond:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_download_period_seconds"
    .end annotation
.end field

.field private pfmConfig:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pfm_config"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/pfm/domain/PfmConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevicePlatform()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->devicePlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedFileTimeMillis()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->lastModifiedFileTimeMillis:J

    return-wide v0
.end method

.method public getNextDownloadPeriodSecond()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->nextDownloadPeriodSecond:J

    return-wide v0
.end method

.method public getPfmConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/pfm/domain/PfmConfig;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->pfmConfig:Ljava/util/List;

    return-object v0
.end method

.method public setLastModifiedFileTimeMillis(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->lastModifiedFileTimeMillis:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DevicePlatformConfig{devicePlatform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->devicePlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", nextDownloadPeriodSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->nextDownloadPeriodSecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pfmConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->pfmConfig:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedFileTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/pfm/domain/DevicePlatformConfig;->lastModifiedFileTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
