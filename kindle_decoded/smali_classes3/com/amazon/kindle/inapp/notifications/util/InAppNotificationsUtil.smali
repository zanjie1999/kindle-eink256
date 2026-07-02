.class public final Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;
.super Ljava/lang/Object;
.source "InAppNotificationsUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsUtil.kt\ncom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil\n*L\n1#1,75:1\n*E\n"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final CACHE_DIR_PREFIX:Ljava/lang/String; = "/data/data/"

# The value of this static final field might be set in the static constructor
.field private static final CACHE_DIR_SUFFIX:Ljava/lang/String; = "/cache/inapp/notifications"

.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

.field private static final TAG:Ljava/lang/String;

.field private static final XACB_COOKIE_PATTERN_WITH_QUOTES:Ljava/util/regex/Pattern;

.field private static deleteRequestFail:Z

.field private static useGamma:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    .line 17
    const-class v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->TAG:Ljava/lang/String;

    const-string v0, "/data/data/"

    .line 18
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->CACHE_DIR_PREFIX:Ljava/lang/String;

    const-string v0, "/cache/inapp/notifications"

    .line 19
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->CACHE_DIR_SUFFIX:Ljava/lang/String;

    const-string v0, "^(x-[a-z]+)=\"([^;]+)\";.*domain=([a-z\\.]+);.*"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->XACB_COOKIE_PATTERN_WITH_QUOTES:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic isTablet$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;Landroid/content/Context;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 36
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "InAppNotificationsPlugin.getSDK().context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->isTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->CACHE_DIR_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->CACHE_DIR_SUFFIX:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCookieString(Lcom/amazon/kindle/krx/application/IDeviceInformation;)Ljava/lang/String;
    .locals 3

    const-string v0, "di"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getXmainXacbCookieForDevicePfm()Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->XACB_COOKIE_PATTERN_WITH_QUOTES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x-access-token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "; "

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.append(\"; \").append(m\u2026nd(m.group(2)).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 50
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Couldn\'t find x-main/x-acb cookie"

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getDeleteRequestFail()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->deleteRequestFail:Z

    return v0
.end method

.method public final getSmallestDisplayLength(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 71
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final getUseGamma()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->useGamma:Z

    return v0
.end method

.method public final isTablet(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$bool;->is_tablet:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public final setDeleteRequestFail(Z)V
    .locals 0

    .line 31
    sput-boolean p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->deleteRequestFail:Z

    return-void
.end method

.method public final setUseGamma(Z)V
    .locals 0

    .line 28
    sput-boolean p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->useGamma:Z

    return-void
.end method
