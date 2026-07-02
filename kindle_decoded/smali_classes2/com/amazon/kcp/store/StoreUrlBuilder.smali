.class public Lcom/amazon/kcp/store/StoreUrlBuilder;
.super Ljava/lang/Object;
.source "StoreUrlBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreUrlBuilder$Path;,
        Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
    }
.end annotation


# static fields
.field private static final INSTALLATION_SOURCE_COOKIE_PARAM_KEY:Ljava/lang/String; = "is"

.field private static final KINDLE_STORE_URL_ARGUMENTS_BASE:Ljava/lang/String; = "w=${width}&h=${height}&dpi=${dpi}&deviceType=${deviceType}&osv=${osVersion}&eid=${eid}&tag=${tag}&linkCode=${linkCode}&appv=${appVersion}&ref_=${ref}"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final refMarker:Ljava/lang/String;

.field private uriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kcp/store/StoreUrlBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/store/StorePathProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p3, p0, Lcom/amazon/kcp/store/StoreUrlBuilder;->refMarker:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/store/StoreUrlBuilder;->setEssentialQueries(Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Lcom/amazon/kcp/store/StorePathProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    if-eq p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 113
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to build a store url ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") which requires valid action params to be passed in!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iput-object p5, p0, Lcom/amazon/kcp/store/StoreUrlBuilder;->refMarker:Ljava/lang/String;

    .line 118
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/store/StoreUrlBuilder;->setEssentialQueries(Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static getKstoreHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "w=${width}&h=${height}&dpi=${dpi}&deviceType=${deviceType}&osv=${osVersion}&eid=${eid}&tag=${tag}&linkCode=${linkCode}&appv=${appVersion}&ref_=${ref}"

    invoke-static {p0, v1}, Lcom/amazon/kcp/store/StoreUrlBuilder;->replaceBaseArgumentParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&deviceName="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {}, Lcom/amazon/kcp/store/StoreUrlBuilder;->getThemeParameter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {}, Lcom/amazon/kcp/store/StoreUrlBuilder;->getRubyOnFireParameters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {}, Lcom/amazon/kcp/store/StoreUrlBuilder;->getPlayBillingParameters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLegacyStorePathUrl(Lcom/amazon/kcp/store/StorePathProvider;)Ljava/lang/String;
    .locals 1

    .line 173
    invoke-interface {p0}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultPath()Landroid/net/Uri$Builder;

    move-result-object p0

    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    .line 174
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOverriddenWeblabs()Ljava/lang/String;
    .locals 1

    .line 245
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/store/StoreDomainUtils;->isStoreDomainOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/amazon/kcp/store/StoreDomainUtils;->getOverriddenStoreWeblabs()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static getPlayBillingParameters()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isPlayStoreBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&is=com.android.vending"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static getRubyOnFireParameters()Ljava/lang/String;
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const-string v2, "&rubyOnFire="

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&fireOS="

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getFireOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&fontScale="

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getThemeParameter()Ljava/lang/String;
    .locals 3

    .line 195
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&theme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private static replaceBaseArgumentParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 253
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 255
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 256
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 258
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isForceIphoneStoreEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/amazon/kcp/application/AmazonDeviceType;->IPHONE:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\$\\{width\\}"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\$\\{height\\}"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\$\\{dpi\\}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\$\\{deviceType\\}"

    .line 263
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\$\\{osVersion\\}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\$\\{appVersion\\}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDSN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\$\\{eid\\}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\$\\{tag\\}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "as2"

    .line 268
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\$\\{linkCode\\}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\$\\{ref\\}"

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setEssentialQueries(Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Lcom/amazon/kcp/store/StorePathProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$1;->$SwitchMap$com$amazon$kcp$store$StoreUrlBuilder$Action:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-interface {p2}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultPath()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 147
    sget-object p3, Lcom/amazon/kcp/store/StoreUrlBuilder;->TAG:Ljava/lang/String;

    const-string p5, "Someone forgot to update the store URL builder when they added an Action type, defaulting to store URL."

    invoke-static {p3, p5}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-interface {p2, p3, p5}, Lcom/amazon/kcp/store/StorePathProvider;->getStoreSearchPath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-interface {p2, p3, p5}, Lcom/amazon/kcp/store/StorePathProvider;->getFeatureDocPath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-interface {p2, p3, p5}, Lcom/amazon/kcp/store/StorePathProvider;->getBrowseNodePath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    goto :goto_0

    .line 134
    :pswitch_3
    invoke-interface {p2, p3, p1, p5}, Lcom/amazon/kcp/store/StorePathProvider;->getSeriesDetailPagePath(Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    goto :goto_0

    .line 131
    :pswitch_4
    invoke-interface {p2, p3, p1, p5}, Lcom/amazon/kcp/store/StorePathProvider;->getDetailPagePath(Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    goto :goto_0

    .line 127
    :pswitch_5
    invoke-interface {p2, p5}, Lcom/amazon/kcp/store/StorePathProvider;->getStorefrontPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_0

    .line 150
    invoke-static {}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->values()[Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 158
    :cond_0
    iput-object p2, p0, Lcom/amazon/kcp/store/StoreUrlBuilder;->uriBuilder:Landroid/net/Uri$Builder;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DynaConf Store URL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "As URI: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kcp/store/StoreUrlBuilder;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Landroid/net/Uri;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreUrlBuilder;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
