.class public final Lcom/amazon/ksdk/profiles/GetProfilesConfigs;
.super Ljava/lang/Object;
.source "GetProfilesConfigs.java"


# instance fields
.field final mDownloadAvatar:Z

.field final mForceUpdate:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/amazon/ksdk/profiles/GetProfilesConfigs;->mForceUpdate:Z

    .line 17
    iput-boolean p2, p0, Lcom/amazon/ksdk/profiles/GetProfilesConfigs;->mDownloadAvatar:Z

    return-void
.end method


# virtual methods
.method public getDownloadAvatar()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/amazon/ksdk/profiles/GetProfilesConfigs;->mDownloadAvatar:Z

    return v0
.end method

.method public getForceUpdate()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/amazon/ksdk/profiles/GetProfilesConfigs;->mForceUpdate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetProfilesConfigs{mForceUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ksdk/profiles/GetProfilesConfigs;->mForceUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mDownloadAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ksdk/profiles/GetProfilesConfigs;->mDownloadAvatar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
