.class public Lcom/amazon/sitb/android/impl/DeviceInformationProvider;
.super Ljava/lang/Object;
.source "DeviceInformationProvider.java"

# interfaces
.implements Lcom/amazon/sitb/android/IDeviceInformationProvider;


# static fields
.field private static final XACB_COOKIE_PATTERN_WITHOUT_QUOTES:Ljava/util/regex/Pattern;

.field private static final XACB_COOKIE_PATTERN_WITH_QUOTES:Ljava/util/regex/Pattern;

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private final seriesHostnameKey:Ljava/lang/String;

.field private final storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

.field private final userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

.field private final xacbCookiePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "^(x-[a-z]+)=([^;]+);.*domain=([a-z\\.]+);.*"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->XACB_COOKIE_PATTERN_WITHOUT_QUOTES:Ljava/util/regex/Pattern;

    const-string v0, "^(x-[a-z]+)=\"([^;]+)\";.*domain=([a-z\\.]+);.*"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->XACB_COOKIE_PATTERN_WITH_QUOTES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kindle/krx/store/IStoreManager;Ljava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    .line 45
    iput-object p2, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 46
    iput-object p3, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    .line 47
    iput-object p4, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->seriesHostnameKey:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 49
    sget-object p1, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->XACB_COOKIE_PATTERN_WITH_QUOTES:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->XACB_COOKIE_PATTERN_WITHOUT_QUOTES:Ljava/util/regex/Pattern;

    :goto_0
    iput-object p1, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->xacbCookiePattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryOfResidence()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeriesHostname()Ljava/lang/String;
    .locals 6

    .line 79
    invoke-virtual {p0}, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "Unable to get series hostname because PFM is unknown"

    invoke-interface {v0, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 89
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/amazon/sitb/android/utils/MarketplaceUtil;->getSeriesEndPointFromPfm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    sget-object v3, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsell::Series : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->seriesHostnameKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setting string = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v3, "Caught exception when trying to get seriesHostName"

    invoke-interface {v2, v3, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getStoreHostname()Ljava/lang/String;
    .locals 5

    .line 134
    invoke-virtual {p0}, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Unable to get store hostname because PFM is unknown"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-static {v0}, Lcom/amazon/sitb/android/utils/MarketplaceUtil;->getStoreEndPointFromPfm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    sget-object v2, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upsell::Store : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setting store endpoint string = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-object v1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXMainOrXAcb()Lorg/apache/http/NameValuePair;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getXmainXacbCookieForDevicePfm()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->xacbCookiePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/impl/DeviceInformationProvider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Pattern not found"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method
