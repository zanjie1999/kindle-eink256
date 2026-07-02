.class public Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;
.super Ljava/lang/Object;
.source "KindleFastMetricsSessions.java"

# interfaces
.implements Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;


# static fields
.field private static final ASSET_ID_GROUP_POSITION:I = 0x1

.field private static final KINDLE_GUID_PATTERN:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUPS_TO_MATCH:I = 0x2

.field private static final REVISION_ID_GROUP_POSITION:I = 0x2


# instance fields
.field private final service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([cC][rR]![a-zA-Z0-9]{28}\\b)?(:[a-zA-Z0-9]{8}$)?"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->KINDLE_GUID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getInstance()Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;-><init>(Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    return-void
.end method


# virtual methods
.method public endAppSession()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getNativeService()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->EndAppSession()V

    :cond_1
    return-void
.end method

.method public endReadingSession()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getNativeService()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->EndReadingSession()V

    :cond_1
    return-void
.end method

.method setIdentifiers(Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 162
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setEmbeddedId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    .line 166
    sget-object v0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->KINDLE_GUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v0, 0x0

    .line 169
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x32

    if-gt v0, v1, :cond_3

    const/4 v1, 0x1

    .line 170
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setAssetId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    .line 175
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    .line 178
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setRevisionId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public startAppSession(Lcom/amazon/kindle/krx/application/IUserAccount;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getNativeService()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    new-instance v1, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    invoke-direct {v1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;-><init>()V

    if-eqz p2, :cond_1

    .line 55
    sget-object p2, Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;->FirstPartyAndroid:Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;->ThirdPartyAndroid:Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;

    :goto_0
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setDeviceFamily(Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setCustomerId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    move-result-object p2

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setCountryOfResidence(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    move-result-object p2

    .line 62
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setPreferredMarketplaceId(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    .line 65
    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setTimeZone(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    move-result-object p1

    .line 66
    invoke-static {p3}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setAppVersion(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    move-result-object p1

    .line 67
    invoke-static {p4}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    move-result-object p1

    .line 68
    invoke-static {p5}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setDeviceModel(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    move-result-object p1

    .line 69
    invoke-static {p6}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setDeviceType(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    move-result-object p1

    .line 70
    invoke-static {p7}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->setOsVersion(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;

    .line 72
    invoke-virtual {v1}, Lcom/amazon/kindle/fastmetrics/jni/AppSession$Builder;->build()Lcom/amazon/kindle/fastmetrics/jni/AppSession;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->StartAppSession(Lcom/amazon/kindle/fastmetrics/jni/AppSession;)V

    :cond_3
    return-void
.end method

.method public startReadingSession(Lcom/amazon/kindle/krx/content/IBook;JJJLjava/lang/String;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getNativeService()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v1, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    invoke-direct {v1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;-><init>()V

    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setAsin(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    move-result-object v2

    .line 104
    invoke-static {p8}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v2, p8}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setContentType(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    move-result-object p8

    .line 105
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p8, v2}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setFormat(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    move-result-object p8

    .line 106
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p8, v2}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setMimeType(Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    .line 107
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsSessions;->setIdentifiers(Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 110
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setStartReadingLocation(J)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p4, p5}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setEndReadingLocation(J)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1, p6, p7}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->setMaxPosition(J)Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;

    .line 114
    invoke-virtual {v1}, Lcom/amazon/kindle/fastmetrics/jni/ReadingSession$Builder;->build()Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;->StartReadingSession(Lcom/amazon/kindle/fastmetrics/jni/ReadingSession;)V

    :cond_2
    return-void
.end method
