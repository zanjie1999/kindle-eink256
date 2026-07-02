.class public Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "GetWifiSyncAuthTokenInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private certificate:Ljava/lang/String;

.field private isCertificateChainPresent:Ljava/lang/Boolean;

.field private publicKey:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.pwsync.v1.GetWifiSyncAuthTokenInput"

    aput-object v2, v0, v1

    .line 56
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 78
    instance-of v0, p1, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;

    .line 85
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->certificate:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->certificate:Ljava/lang/String;

    .line 86
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->isCertificateChainPresent:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->isCertificateChainPresent:Ljava/lang/Boolean;

    .line 87
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->publicKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->publicKey:Ljava/lang/String;

    .line 88
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->signature:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->signature:Ljava/lang/String;

    .line 89
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->timestamp:J

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCertificate()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->certificate:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->classNameHashCode:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->certificate:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->isCertificateChainPresent:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->publicKey:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->signature:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->timestamp:J

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 63
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIsCertificateChainPresent()Ljava/lang/Boolean;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->isCertificateChainPresent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCertificate(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->certificate:Ljava/lang/String;

    return-void
.end method

.method public setIsCertificateChainPresent(Ljava/lang/Boolean;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->isCertificateChainPresent:Ljava/lang/Boolean;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->signature:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenInput;->timestamp:J

    return-void
.end method
