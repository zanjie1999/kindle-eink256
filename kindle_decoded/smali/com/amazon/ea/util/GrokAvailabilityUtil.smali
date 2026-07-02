.class public Lcom/amazon/ea/util/GrokAvailabilityUtil;
.super Ljava/lang/Object;
.source "GrokAvailabilityUtil.java"


# static fields
.field public static final CONFIG_KEY_GOODREADS_CONNECTED:Ljava/lang/String; = "goodreads_islinked"

.field public static final PROFILE_LINK_KEY_AMAZON:Ljava/lang/String; = "amazon"

.field public static final PROFILE_LINK_KEY_GOODREADS:Ljava/lang/String; = "goodreads"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.GrokAvailabilityUtil"

.field private static final accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

.field private static final actualDeviceType:Lcom/amazon/ras/uservalidation/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->FIRE:Lcom/amazon/ras/uservalidation/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    :goto_0
    sput-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->actualDeviceType:Lcom/amazon/ras/uservalidation/DeviceType;

    .line 45
    sget-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->FIRE:Lcom/amazon/ras/uservalidation/DeviceType;

    .line 46
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/ras/uservalidation/factories/GoodreadsAccountUtilFactory;->getGoodreadsAccountUtil(Landroid/content/Context;Lcom/amazon/ras/uservalidation/DeviceType;)Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    .line 47
    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->fetchData()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCreateGoodreadShelfWidget()Z
    .locals 3

    .line 247
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v2, "Social Networks are blocked through parental controls; not possible to create GoodreadsShelfWidget"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 253
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 255
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v2, "Goodreads info is null; not possible to create GoodreadsShelfWidget"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static clearLocalState()V
    .locals 2

    .line 183
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v1, "clearing local state"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "startactions.config"

    const-string v1, "goodreads_islinked"

    .line 186
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->deletePreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static forceUpdate()V
    .locals 2

    .line 122
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->fetchData(Z)V

    return-void
.end method

.method public static getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 4

    .line 196
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->actualDeviceType:Lcom/amazon/ras/uservalidation/DeviceType;

    sget-object v1, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    return-object v2

    .line 200
    :cond_0
    sget-object v0, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->INSTANCE:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->isComics()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 202
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v0, "EAGoodreadsShelfComponent is disabled for Comixology"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2

    .line 206
    :cond_2
    invoke-static {p0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 208
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v0, "A Goodreads account is not linked, invalidating AutoShelf Widget."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2

    .line 213
    :cond_4
    invoke-static {p0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getProfileLink(Z)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "amazon"

    .line 219
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "goodreads"

    .line 220
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 221
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 222
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    goto :goto_0

    :cond_5
    move-object p0, v2

    move-object v0, p0

    .line 225
    :goto_0
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 228
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v2

    .line 231
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 238
    :cond_7
    new-instance v2, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-direct {v2, v1, v0, p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 232
    :cond_8
    :goto_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 233
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v0, "Asin, Customer ID, or Goodreads ID is null, invalidating AutoShelf Widget."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v2
.end method

.method public static getProfileLink()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getProfileLink(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getProfileLink(Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->actualDeviceType:Lcom/amazon/ras/uservalidation/DeviceType;

    sget-object v1, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    return-object v2

    .line 143
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 144
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v0, "asking GoodreadsAccountUtil for profile link."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {p0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object p0

    if-nez p0, :cond_3

    .line 148
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 149
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "no profile link found for current account."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 155
    :cond_3
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "amazon"

    .line 156
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getAmazonUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "goodreads"

    .line 157
    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getGoodreadsUri()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 160
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v1, "exception occurred when getting goodreads profile link."

    invoke-static {v0, v1, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static isGrokAvailable()Z
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable(Z)Z

    move-result v0

    return v0
.end method

.method public static isGrokAvailable(Z)Z
    .locals 5

    .line 72
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->actualDeviceType:Lcom/amazon/ras/uservalidation/DeviceType;

    sget-object v1, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    return v2

    .line 76
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 77
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v0, "checking saved state for goodreads status"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo p0, "startactions.config"

    const-string v0, "goodreads_islinked"

    .line 79
    invoke-static {p0, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    .line 82
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    sget-object v1, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saved state found! [savedState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    sget-object v1, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    sget-object v3, Lcom/amazon/ea/util/GrokAvailabilityUtil;->accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {v3}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getGrokState()Lcom/amazon/ras/uservalidation/models/GrokState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 89
    :cond_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 90
    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no saved state found, returning information found in GoodreadsAccountUtil"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5
    sget-object p0, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    sget-object v1, Lcom/amazon/ea/util/GrokAvailabilityUtil;->accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {v1}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getGrokState()Lcom/amazon/ras/uservalidation/models/GrokState;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {p0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->isGrokLinked()Z

    move-result p0
    :try_end_0
    .catch Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2

    :catch_0
    move-exception p0

    .line 94
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v1, "Exception while checking Grok availability"

    invoke-static {v0, v1, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static isGrokSupported()Z
    .locals 4

    .line 107
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->actualDeviceType:Lcom/amazon/ras/uservalidation/DeviceType;

    sget-object v1, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 111
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    sget-object v1, Lcom/amazon/ea/util/GrokAvailabilityUtil;->accountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {v1}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getGrokState()Lcom/amazon/ras/uservalidation/models/GrokState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 113
    sget-object v1, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    const-string v3, "Exception while checking if Grok is supported for this user and device."

    invoke-static {v1, v3, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static saveLocalState(Z)V
    .locals 3

    .line 172
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/amazon/ea/util/GrokAvailabilityUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saving to local state [isLinked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "startactions.config"

    const-string v1, "goodreads_islinked"

    .line 175
    invoke-static {v0, v1, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
