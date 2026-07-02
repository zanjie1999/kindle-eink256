.class public Lcom/amazon/kcp/helpandfeedback/CantileverUtils;
.super Ljava/lang/Object;
.source "CantileverUtils.java"


# static fields
.field public static final AMAZON_ROOT_URL:Ljava/util/regex/Pattern;

.field private static final ASSOCIATE_TAG:Ljava/lang/String; = "associateTag"

.field private static final PRELOAD_TYPE:Ljava/lang/String; = "preloadType"

.field private static final SCREENSIZE_DIAG:Ljava/lang/String; = "screenSizeDiagonal"

.field private static final SCREENSIZE_PIXELS:Ljava/lang/String; = "screenSizePixels"

.field private static final SCREEN_TYPE:Ljava/lang/String; = "screenType"

.field private static final SD_STORAGE_SPACE:Ljava/lang/String; = "sdStorageSpace"

.field private static final TAG:Ljava/lang/String;

.field public static final WEBVIEW_COMPLETE_URL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->TAG:Ljava/lang/String;

    const-string v0, "http(s)?://(www\\.)?amazon\\.[a-z]*(\\.[a-z]*)?/$"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->AMAZON_ROOT_URL:Ljava/util/regex/Pattern;

    const-string v0, "/webViewComplete"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->WEBVIEW_COMPLETE_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOEMInformation()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v1

    const-string/jumbo v2, "preloadType"

    .line 80
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "associateTag"

    .line 81
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    sget-object v2, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->TAG:Ljava/lang/String;

    const-string v3, "AssociateInformationProviderFactory was not initialized properly"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static getScreenData(Landroid/app/Activity;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getScreenWidthInInches(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    .line 121
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getScreenHeightInInches(Landroid/content/Context;)F

    move-result v4

    float-to-double v4, v4

    mul-double v2, v2, v2

    mul-double v4, v4, v4

    add-double/2addr v2, v4

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "screenSizePixels"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v2, "%1.2f inch"

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenSizeDiagonal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->getScreenType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "screenType"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getScreenType(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 132
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "UNDEFINED"

    goto :goto_0

    :cond_0
    const-string p0, "XLARGE"

    goto :goto_0

    :cond_1
    const-string p0, "LARGE"

    goto :goto_0

    :cond_2
    const-string p0, "NORMAL"

    goto :goto_0

    :cond_3
    const-string p0, "SMALL"

    :goto_0
    return-object p0
.end method

.method public static getStorageData()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-interface {v1, v2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->avaliableSizeForPath(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v1, v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    .line 100
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%1.2f MB"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "sdStorageSpace"

    .line 104
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static isCantileverMarketplace()Lcom/amazon/kindle/util/ThreeStateValue;
    .locals 2

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getCantileverRegion(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/amazon/kindle/util/ThreeStateValue;->TRUE:Lcom/amazon/kindle/util/ThreeStateValue;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/util/ThreeStateValue;->FALSE:Lcom/amazon/kindle/util/ThreeStateValue;

    :goto_0
    return-object v0

    .line 64
    :cond_1
    sget-object v0, Lcom/amazon/kindle/util/ThreeStateValue;->FALSE:Lcom/amazon/kindle/util/ThreeStateValue;

    return-object v0

    .line 67
    :cond_2
    sget-object v0, Lcom/amazon/kindle/util/ThreeStateValue;->UNKNOWN:Lcom/amazon/kindle/util/ThreeStateValue;

    return-object v0
.end method

.method public static isExitChatUrl(Ljava/lang/String;)Z
    .locals 1

    .line 158
    sget-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->AMAZON_ROOT_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isForumsInTreatment()Z
    .locals 3

    .line 176
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v1, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    const-string v2, "KINDLE_ANDROID_CANTILEVER_FORUMS_402148"

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTriggerAndCheckIsOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isLandingV2InTreatment()Z
    .locals 3

    .line 187
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    const-string v2, "CANTILEVER_KINDLE_LANDINGV2_ANDROID_400725"

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v1}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTriggerAndCheckIsOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isWebViewCompleteURL(Ljava/lang/String;)Z
    .locals 1

    .line 167
    sget-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->WEBVIEW_COMPLETE_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method
