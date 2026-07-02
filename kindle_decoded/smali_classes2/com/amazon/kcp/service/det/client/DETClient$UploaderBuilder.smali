.class public Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;
.super Ljava/lang/Object;
.source "DETClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/service/det/client/DETClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploaderBuilder"
.end annotation


# instance fields
.field private contentType:Lcom/amazon/kcp/service/det/client/DETClient$ContentType;

.field private deviceType:Ljava/lang/String;

.field private file:Lcom/amazon/kcp/service/det/klf/KLFFile;

.field private key:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tagHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/service/det/klf/KLFFile;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->file:Lcom/amazon/kcp/service/det/klf/KLFFile;

    .line 80
    sget-object p1, Lcom/amazon/kcp/service/det/client/DETClient$ContentType;->DEVICE_LOGS:Lcom/amazon/kcp/service/det/client/DETClient$ContentType;

    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->contentType:Lcom/amazon/kcp/service/det/client/DETClient$ContentType;

    .line 81
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->deviceType:Ljava/lang/String;

    const/16 p1, 0x14

    new-array p1, p1, [B

    .line 83
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 84
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->toHex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->tag:Ljava/lang/String;

    const-string p1, "X-Anonymous-Tag"

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->tagHeader:Ljava/lang/String;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public upload()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->file:Lcom/amazon/kcp/service/det/klf/KLFFile;

    iget-object v1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->tagHeader:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->deviceType:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->contentType:Lcom/amazon/kcp/service/det/client/DETClient$ContentType;

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/service/det/client/DETClient;->access$000(Lcom/amazon/kcp/service/det/klf/KLFFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/service/det/client/DETClient$ContentType;)V

    return-void
.end method

.method public withContentType(Lcom/amazon/kcp/service/det/client/DETClient$ContentType;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->contentType:Lcom/amazon/kcp/service/det/client/DETClient$ContentType;

    return-object p0
.end method

.method public withDeviceType(Ljava/lang/String;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public withDsn(Ljava/lang/String;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->tag:Ljava/lang/String;

    const-string p1, "X-DSN"

    .line 97
    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->tagHeader:Ljava/lang/String;

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->key:Ljava/lang/String;

    return-object p0
.end method
