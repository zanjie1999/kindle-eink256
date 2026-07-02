.class public Lcom/amazon/device/crashmanager/ndk/SystemProps;
.super Ljava/lang/Object;
.source "SystemProps.java"


# instance fields
.field private bootLoader:Ljava/lang/String;

.field private buildFingerPrint:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private osBuildNumber:Ljava/lang/String;

.field private revision:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootLoader()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->bootLoader:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildFingerPrint()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->buildFingerPrint:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public getOsBuildNumber()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->osBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBootLoader(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->bootLoader:Ljava/lang/String;

    return-void
.end method

.method public setBuildFingerPrint(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->buildFingerPrint:Ljava/lang/String;

    return-void
.end method

.method public setHardware(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->hardware:Ljava/lang/String;

    return-void
.end method

.method public setOsBuildNumber(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->osBuildNumber:Ljava/lang/String;

    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->revision:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/device/crashmanager/ndk/SystemProps;->version:Ljava/lang/String;

    return-void
.end method
