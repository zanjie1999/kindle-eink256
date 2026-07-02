.class public Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;
.super Ljava/lang/Object;
.source "GoodreadsUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGoodreadsAccountUtil(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;
    .locals 2

    .line 88
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->FIRE:Lcom/amazon/ras/uservalidation/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/ras/uservalidation/DeviceType;->ANDROID:Lcom/amazon/ras/uservalidation/DeviceType;

    .line 89
    :goto_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/amazon/ras/uservalidation/factories/GoodreadsAccountUtilFactory;->getGoodreadsAccountUtil(Landroid/content/Context;Lcom/amazon/ras/uservalidation/DeviceType;)Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    move-result-object p0

    return-object p0
.end method

.method public static getGoodreadsUserId(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;
    .locals 3

    .line 41
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$bool;->goodreads_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Goodreads not supported on current device based on resources."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 48
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->getGoodreadsAccountUtil(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    move-result-object p0

    .line 49
    sget-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    invoke-interface {p0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getGrokState()Lcom/amazon/ras/uservalidation/models/GrokState;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-interface {p0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->isGrokLinked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {p0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getGoodreadsUri()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    .line 53
    :catch_0
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Failed to gather Goodreads account data; treating user as not-linked."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static isGoodreadsLinked(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->getGoodreadsUserId(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isGoodreadsSupported(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->getGoodreadsAccountUtil(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    move-result-object p0

    const/4 v0, 0x0

    .line 67
    :try_start_0
    sget-object v1, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    invoke-interface {p0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getGrokState()Lcom/amazon/ras/uservalidation/models/GrokState;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/ras/uservalidation/exception/GoodreadsAccountUtilException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 69
    :catch_0
    sget-object p0, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to gather Goodreads state data.  Treating as not supported."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
