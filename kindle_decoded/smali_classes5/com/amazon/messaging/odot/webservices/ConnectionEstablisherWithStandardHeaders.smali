.class public Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;
.super Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;
.source "ConnectionEstablisherWithStandardHeaders.java"


# static fields
.field private static final SUPPORTED_LANGUAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectivityManagerWrapper:Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 22
    const-class v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "en-US"

    const-string v2, "en-GB"

    const-string v3, "de-DE"

    const-string v4, "fr-FR"

    const-string v5, "it-IT"

    const-string v6, "es-ES"

    const-string/jumbo v7, "zh-CN"

    const-string/jumbo v8, "zh-TW"

    const-string v9, "ja-JP"

    const-string v10, "ko-KR"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->mConnectivityManagerWrapper:Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;

    .line 33
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;Ljava/net/URLConnection;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->addStandardHeaders(Ljava/net/URLConnection;)V

    return-void
.end method

.method private addStandardHeaders(Ljava/net/URLConnection;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->populateCommonHeaders(Ljava/net/URLConnection;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->mConnectivityManagerWrapper:Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectivityUtils;->isConnected(Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->populateHeadersForWifiConnection(Ljava/net/URLConnection;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->populateHeadersForWanConnection(Ljava/net/URLConnection;)V

    :goto_0
    return-void
.end method

.method private populateAcceptLanguageHeader(Ljava/net/URLConnection;)V
    .locals 4

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s-%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "en-US"

    :cond_0
    const-string v1, "Accept-Language"

    .line 82
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateCommonHeaders(Ljava/net/URLConnection;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->populateAcceptLanguageHeader(Ljava/net/URLConnection;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->populateLocalTimeOffsetHeader(Ljava/net/URLConnection;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->populateSWVersionHeader(Ljava/net/URLConnection;)V

    return-void
.end method

.method private populateHeadersForWanConnection(Ljava/net/URLConnection;)V
    .locals 9

    const-string v0, "X-ADP-Transport"

    const-string v1, "WAN"

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 110
    sget-object p1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->TAG:Ljava/lang/String;

    const-string v0, "Cannot obtain telephony manager, some standard headers will be omitted"

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 122
    :try_start_0
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "X-ADP-MCC-MNC"

    const-string v6, "%s:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v5, v2}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v4}, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->convert(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "X-ADP-Country"

    .line 128
    invoke-direct {p0, p1, v4, v2}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    sget-object p1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Cannot parse network operator information: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 117
    :cond_3
    :goto_1
    sget-object p1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->TAG:Ljava/lang/String;

    const-string v0, "Cannot obtain valid network operator"

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateHeadersForWifiConnection(Ljava/net/URLConnection;)V
    .locals 2

    const-string v0, "X-ADP-Transport"

    const-string v1, "WIFI"

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateLocalTimeOffsetHeader(Ljava/net/URLConnection;)V
    .locals 5

    .line 86
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 88
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-ADP-LTO"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateSWVersionHeader(Ljava/net/URLConnection;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/DeviceInfoHolder;->getInstance(Landroid/content/Context;)Lcom/amazon/messaging/odot/webservices/DeviceInfo;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "X-ADP-SW"

    .line 98
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 136
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string v0, "Replacing %s header value: %s -> %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders$1;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)V

    invoke-super {p0, v0}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
