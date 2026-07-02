.class public Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;
.super Ljava/lang/Object;
.source "ReadingStreamsUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.metrics.ReadingStreamsUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static checkLayout(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FixedLayout"

    goto :goto_0

    :cond_0
    const-string p0, "Reflowable"

    :goto_0
    return-object p0
.end method

.method private static getBaseMetamap(Ljava/lang/String;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/socialsharing/service/Share;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    .line 104
    sget-object p0, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Share object is null. Cannot report share"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getShareType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1

    .line 108
    sget-object p0, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    new-array p2, v4, [Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "No share type in the share object with share ID %s. Cannot report share for ASIN %s"

    .line 108
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getShareType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ShareType"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    .line 115
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v6

    .line 116
    invoke-interface {v6}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    sget-object v6, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Unable to get marketplace for the active user on the application"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "MarketPlace"

    .line 120
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    .line 122
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v6, v4, v3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v4, v2

    const-string v2, "%s:%s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceVer"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceType"

    .line 123
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "OsVer"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 128
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v3, "AppVer"

    .line 129
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    sget-object v2, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Cannot find the package name to extract app version"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Asin"

    .line 135
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_3

    const-string v1, "ShareApp"

    .line 138
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    const-string p0, "ShareEntryPoint"

    .line 142
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 147
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentType"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BookFormat"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->checkLayout(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Layout"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "NONE"

    goto :goto_2

    .line 152
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "BookContentClass"

    .line 151
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BookLanguage"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 155
    :cond_6
    sget-object p0, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Book is null. Cannot log additional book metadata"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method public static getMetamapForShare(Ljava/lang/String;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/socialsharing/service/Share;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 67
    sget-object p0, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Share object is null. Cannot report share"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 70
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->getBaseMetamap(Ljava/lang/String;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 71
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getShareType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BOOK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getShareType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QUOTE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuoteStart()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SelectionStart"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuoteEnd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SelectionEnd"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getShareType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PROGRESS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_3

    .line 80
    sget-object p1, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Book cannot be null. Thus not able to log progress"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 83
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReadingProgress"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_4
    sget-object p1, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Cannot determine the share type"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static hideContext()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method

.method public static performAction(Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-interface {v0, v1, p0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static performAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordMetadata(Ljava/util/Map;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-interface {v0, v1, p0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
