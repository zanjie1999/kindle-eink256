.class public Lcom/amazon/kindle/services/download/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/services/download/DownloadUtils$AssetDetailsForAnalytics;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_MODULE_NAME:Ljava/lang/String; = "ReaderDownload"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kindle/services/download/DownloadUtils;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/download/DownloadUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTemporaryDownloadFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .line 220
    new-instance v0, Lcom/amazon/kindle/services/download/DownloadUtils$1;

    invoke-direct {v0}, Lcom/amazon/kindle/services/download/DownloadUtils$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getTransportMethod(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Ljava/lang/String;
    .locals 2

    .line 43
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isWanConnected()Z

    move-result v0

    const-string v1, "WAN"

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->enablePaidWan()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "PaidWAN"

    return-object p0

    :cond_0
    return-object v1

    .line 49
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isWifiConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "WiFi"

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static initializeSharedBookDownload(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->enabledSharedBookDownload()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 168
    sget-object p0, Lcom/amazon/kindle/services/download/DownloadUtils;->TAG:Ljava/lang/String;

    const-string p1, "sharedBookDownloadSetting is not false, ignore shared directory"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 172
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->hasValidSharedDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 177
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 178
    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 187
    sget-object p0, Lcom/amazon/kindle/services/download/DownloadUtils;->TAG:Ljava/lang/String;

    const-string p1, "Doesn\'t contains DRM Asset, ignore shared directory"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 192
    :cond_4
    invoke-interface {v0, p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 194
    sget-object p0, Lcom/amazon/kindle/services/download/DownloadUtils;->TAG:Ljava/lang/String;

    const-string p1, "shared book path is null or empty, return"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 198
    :cond_5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 200
    sget-object p1, Lcom/amazon/kindle/services/download/DownloadUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create shared directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 204
    :cond_6
    invoke-static {p1}, Lcom/amazon/kindle/services/download/DownloadUtils;->getTemporaryDownloadFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 208
    array-length p1, p1

    if-lez p1, :cond_7

    .line 209
    sget-object p0, Lcom/amazon/kindle/services/download/DownloadUtils;->TAG:Ljava/lang/String;

    const-string p1, "Temporary files already exists so go back to use private directory"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 215
    :cond_7
    invoke-interface {v0, p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->addOwnership(Ljava/lang/String;)V

    return-object p0
.end method

.method public static injectDownloadRequestHeaders(Lcom/amazon/kindle/services/download/IDownloadRequest;ZLcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Z",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v1, "X-ADP-COR"

    const-string v2, "X-ADP-Country"

    const-string v3, "X-ADP-APP-SW"

    const-string v4, "X-ADP-SW"

    if-eqz p4, :cond_0

    .line 78
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 77
    invoke-interface {p0, v4, v5}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 80
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    invoke-interface {p0, v3, v4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 82
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 81
    invoke-interface {p0, v2, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getPlatformSoftwareVersion()Ljava/lang/String;

    move-result-object p4

    .line 84
    invoke-interface {p0, v4, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 87
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getInternalVersionNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-interface {p0, v3, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const-string p4, " "

    .line 88
    invoke-interface {p0, v2, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 91
    :goto_0
    sget-object p4, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 92
    invoke-interface {v0, p4}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p4

    .line 91
    invoke-interface {p0, v1, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 94
    sget-object p4, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 95
    invoke-interface {v0, p4}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "X-ADP-PFM"

    .line 94
    invoke-interface {p0, v1, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const-string p4, "X-ADP-App-Id"

    const-string v1, "com.amazon.kindle"

    .line 97
    invoke-interface {p0, p4, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const-string p4, "X-ADP-Reason"

    if-eqz p1, :cond_1

    const-string v1, "ArchivedItems"

    .line 101
    invoke-interface {p0, p4, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    goto :goto_1

    :cond_1
    const-string v1, "ServerInstruction"

    .line 104
    invoke-interface {p0, p4, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 109
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p4

    const/16 v1, 0xf

    .line 110
    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    add-int/2addr v1, p4

    const p4, 0xea60

    div-int/2addr v1, p4

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "X-ADP-LTO"

    .line 112
    invoke-interface {p0, v1, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 115
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "X-Amzn-RequestId"

    .line 115
    invoke-interface {p0, v1, p4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const-string p4, "Accept"

    const-string v1, "*/*"

    .line 118
    invoke-interface {p0, p4, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 122
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    .line 121
    invoke-interface {p0, v2, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 125
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getInternalVersionNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "software_rev"

    .line 124
    invoke-interface {p0, v2, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const-string v1, "X-ADP-CorrelationId"

    .line 128
    invoke-interface {p0, v1, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 131
    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getTransportMethod(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "X-ADP-Transport"

    .line 133
    invoke-interface {p0, v0, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const-string v0, "currentTransportMethod"

    .line 135
    invoke-interface {p0, v0, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    :cond_2
    const-string p3, "is_archived_items"

    if-eqz p1, :cond_3

    const-string p1, "1"

    .line 140
    invoke-interface {p0, p3, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    goto :goto_2

    :cond_3
    const-string p1, "0"

    .line 143
    invoke-interface {p0, p3, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 150
    :goto_2
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p1, p2, :cond_4

    const-string p1, "application/x-com.amazon.drm.Voucher@1.0"

    .line 151
    invoke-interface {p0, p4, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    :cond_4
    return-void
.end method

.method public static isErrorRetryable(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Ljava/lang/Boolean;
    .locals 1

    .line 234
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
