.class public Lcom/amazon/kindle/attribution/FirstStartAttribution;
.super Ljava/lang/Object;
.source "FirstStartAttribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;
    }
.end annotation


# static fields
.field private static final DET_ADS_DEVICE_TYPE_DEVO:Ljava/lang/String; = "A3DHLT0ZCLQ9LQ"

.field private static final DET_ADS_DEVICE_TYPE_PROD:Ljava/lang/String; = "A2JRQCIDU5CGPL"

.field private static final FSA_KEY_PREFIX:Ljava/lang/String; = "firstStartAttribution"

.field private static final KEY_AD_INFO_SUCCESS:Ljava/lang/String; = "AdInfoSuccess"

.field private static final KEY_IS_LAT:Ljava/lang/String; = "IsLAT"

.field private static final KEY_SOFTWARE_VERSION:Ljava/lang/String; = "SoftwareVersion"

.field private static final TAG:Ljava/lang/String;

.field private static final VAL_FALSE:Ljava/lang/String; = "false"

.field private static final VAL_TRUE:Ljava/lang/String; = "true"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kindle/attribution/FirstStartAttribution;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/attribution/FirstStartAttribution;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAdvertisingId(Landroid/content/Context;)Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;
    .locals 3

    .line 60
    sget-object v0, Lcom/amazon/kindle/attribution/FirstStartAttribution;->TAG:Ljava/lang/String;

    const-string v1, "Fetching android advertising id information from Google Play Services."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    sget-object v1, Lcom/amazon/kindle/attribution/FirstStartAttribution;->TAG:Ljava/lang/String;

    const-string v2, "Unable to connect to Google Play Services."

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 72
    new-instance v1, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;-><init>(Lcom/amazon/kindle/attribution/FirstStartAttribution$1;)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->access$102(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->access$202(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;Z)Z

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private static getFilename(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 156
    div-long/2addr p0, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 157
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p3, v0, p0

    const-string p0, "%s.%d.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private timestampToKLFTime(J)Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyMMdd:HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onUserEvent(Lcom/amazon/kindle/event/UserEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 175
    invoke-virtual {p1}, Lcom/amazon/kindle/event/UserEvent;->getEventType()Lcom/amazon/kindle/event/UserEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_START:Lcom/amazon/kindle/event/UserEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 177
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/attribution/FirstStartAttribution;->postAttributedFirstInstallEvent(Landroid/content/Context;Lcom/amazon/kindle/event/UserEvent;)V

    :cond_0
    return-void
.end method

.method public postAttributedFirstInstallEvent(Landroid/content/Context;Lcom/amazon/kindle/event/UserEvent;)V
    .locals 11

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/kindle/attribution/FirstStartAttribution;->getAdvertisingId(Landroid/content/Context;)Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 90
    invoke-static {p1}, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->access$200(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object p1, Lcom/amazon/kindle/attribution/FirstStartAttribution;->TAG:Ljava/lang/String;

    const-string p2, "Customer\'s device has LimitAdTracking flag set. Skipping upload."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;->access$100(Lcom/amazon/kindle/attribution/FirstStartAttribution$AndroidAdvertisingIdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object p1, Lcom/amazon/kindle/attribution/FirstStartAttribution;->TAG:Ljava/lang/String;

    const-string p2, "Ad ID is empty or null. Skipping ad attribution."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s-%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p2}, Lcom/amazon/kindle/event/UserEvent;->getTimestampMillis()J

    move-result-wide v4

    .line 112
    new-instance v6, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;

    invoke-direct {v6}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;-><init>()V

    new-instance v7, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    const-string v8, "Metadata"

    invoke-direct {v7, v8}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    .line 114
    invoke-direct {p0, v4, v5}, Lcom/amazon/kindle/attribution/FirstStartAttribution;->timestampToKLFTime(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "StartTime"

    invoke-direct {v8, v10, v9}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v8, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    .line 115
    invoke-direct {p0, v4, v5}, Lcom/amazon/kindle/attribution/FirstStartAttribution;->timestampToKLFTime(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "EndTime"

    invoke-direct {v8, v10, v9}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v8, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v9, "DeviceType"

    invoke-direct {v8, v9, v1}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7, v8}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v8, "SystemVersion"

    invoke-direct {v1, v8, v2}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v7, v1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    .line 118
    invoke-virtual {v7}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->build()Lcom/amazon/kcp/service/det/klf/KLFSection;

    move-result-object v1

    .line 113
    invoke-virtual {v6, v1}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->addSection(Lcom/amazon/kcp/service/det/klf/KLFSection;)Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;

    new-instance v1, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    const-string v7, "Conversion Event Data"

    invoke-direct {v1, v7}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v8, "advertiser_id"

    invoke-direct {v7, v8, p1}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v7}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance p1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    .line 121
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v7, "advertiser_tracking_enabled"

    invoke-direct {p1, v7, v3}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance p1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v3, "MOBILE_APP_INSTALL"

    const-string v7, "event_type"

    invoke-direct {p1, v7, v3}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance p1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    .line 123
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "event_time"

    invoke-direct {p1, v4, v3}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance p1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v3, "Kindle"

    const-string v4, "application_name"

    invoke-direct {p1, v4, v3}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance p1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v3, "application_version"

    invoke-direct {p1, v3, v2}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance p1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v2, "Android"

    const-string v3, "mobile_os"

    invoke-direct {p1, v3, v2}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance p1, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v2, "locale"

    invoke-direct {p1, v2, v0}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    .line 128
    invoke-virtual {v1}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->build()Lcom/amazon/kcp/service/det/klf/KLFSection;

    move-result-object p1

    .line 119
    invoke-virtual {v6, p1}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->addSection(Lcom/amazon/kcp/service/det/klf/KLFSection;)Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;

    .line 129
    invoke-virtual {v6}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->build()Lcom/amazon/kcp/service/det/klf/KLFFile;

    move-result-object p1

    .line 132
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "A3DHLT0ZCLQ9LQ"

    goto :goto_0

    :cond_2
    const-string v0, "A2JRQCIDU5CGPL"

    .line 138
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/event/UserEvent;->getTimestampMillis()J

    move-result-wide v1

    const-string p2, "firstStartAttribution"

    invoke-static {v1, v2, p2, v0}, Lcom/amazon/kindle/attribution/FirstStartAttribution;->getFilename(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 140
    new-instance v1, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;-><init>(Lcom/amazon/kcp/service/det/klf/KLFFile;)V

    .line 141
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->withDeviceType(Ljava/lang/String;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;

    .line 142
    invoke-virtual {v1, p2}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->withKey(Ljava/lang/String;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;

    .line 143
    invoke-virtual {v1}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->upload()V

    :cond_3
    :goto_1
    return-void
.end method
