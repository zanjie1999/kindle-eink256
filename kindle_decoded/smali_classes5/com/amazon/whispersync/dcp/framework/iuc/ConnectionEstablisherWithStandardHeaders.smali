.class public Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;
.source "ConnectionEstablisherWithStandardHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$Factory;
    }
.end annotation


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

.field private static final SUPPORTED_LANGUAGES_SETTINGS:Lcom/amazon/whispersync/dcp/settings/SettingStringList;


# instance fields
.field private mConnectivityManagerWrapper:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/dcp/framework/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingStringList;

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

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "supported_accepted_languages"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/dcp/settings/SettingStringList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->SUPPORTED_LANGUAGES_SETTINGS:Lcom/amazon/whispersync/dcp/settings/SettingStringList;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->SUPPORTED_LANGUAGES_SETTINGS:Lcom/amazon/whispersync/dcp/settings/SettingStringList;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingStringList;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;Ljava/net/URLConnection;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->addStandardHeaders(Ljava/net/URLConnection;)V

    return-void
.end method

.method private addStandardHeaders(Ljava/net/URLConnection;)V
    .locals 3

    const-string v0, "X-Amzn-RequestId"

    .line 102
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->pushThreadLocalTag(Ljava/lang/String;)V

    .line 111
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->populateCommonHeaders(Ljava/net/URLConnection;)V

    .line 112
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mConnectivityManagerWrapper:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->populateHeadersForWifiConnection(Ljava/net/URLConnection;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->populateHeadersForWanConnection(Ljava/net/URLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 125
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->popThreadLocalTag(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->popThreadLocalTag(Ljava/lang/String;)V

    :cond_3
    throw p1
.end method

.method private populateAcceptLanguageHeader(Ljava/net/URLConnection;)V
    .locals 4

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 140
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

    .line 142
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "en-US"

    :cond_0
    const-string v1, "Accept-Language"

    .line 147
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateCommonHeaders(Ljava/net/URLConnection;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->populateAcceptLanguageHeader(Ljava/net/URLConnection;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->populateLocalTimeOffsetHeader(Ljava/net/URLConnection;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->populateSWVersionHeader(Ljava/net/URLConnection;)V

    return-void
.end method

.method private populateHeadersForWanConnection(Ljava/net/URLConnection;)V
    .locals 9

    const-string v0, "X-ADP-Transport"

    const-string v1, "WAN"

    .line 177
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 181
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Cannot obtain telephony manager, some standard headers will be omitted"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 185
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 195
    :try_start_0
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "X-ADP-MCC-MNC"

    const-string v6, "%s:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v5, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {v4}, Lcom/amazon/whispersync/dcp/framework/iuc/MccToISO31661Convertor;->convert(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "X-ADP-Country"

    .line 202
    invoke-direct {p0, p1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Cannot parse network operator information: %s"

    invoke-virtual {p1, v0, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void

    .line 189
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Cannot obtain valid network operator"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private populateHeadersForWifiConnection(Ljava/net/URLConnection;)V
    .locals 2

    const-string v0, "X-ADP-Transport"

    const-string v1, "WIFI"

    .line 172
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateLocalTimeOffsetHeader(Ljava/net/URLConnection;)V
    .locals 5

    .line 152
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 154
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 156
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-ADP-LTO"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private populateSWVersionHeader(Ljava/net/URLConnection;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getSoftwareVersion()Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-ADP-SW"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private rewriteHeader(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 213
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string v0, "Replacing %s header value: %s -> %s"

    invoke-virtual {v1, v0, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 218
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    .line 75
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)V

    invoke-super {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
