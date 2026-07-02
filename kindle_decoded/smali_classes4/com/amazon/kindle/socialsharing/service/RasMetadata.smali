.class Lcom/amazon/kindle/socialsharing/service/RasMetadata;
.super Ljava/lang/Object;
.source "RasMetadata.java"


# static fields
.field private static final KEY_APPLICATION:Ljava/lang/String; = "x-gr-application"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "x-gr-application-version"

.field private static final KEY_COMPONENT:Ljava/lang/String; = "x-gr-application-component"

.field private static final KEY_HARDWARE_MAKE:Ljava/lang/String; = "x-gr-hw-make"

.field private static final KEY_HARDWARE_MODEL:Ljava/lang/String; = "x-gr-hw-model"

.field private static final KEY_ORIGIN:Ljava/lang/String; = "x-gr-application-page"

.field private static final KEY_OS_VERSION:Ljava/lang/String; = "x-gr-os-version"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.service.RasMetadata"

.field private static final VALUE_APPLICATION:Ljava/lang/String; = "Kindle"

.field private static final VALUE_COMPONENT:Ljava/lang/String; = "SocialSharing"

.field private static final VALUE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getRasMetaDataHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-gr-application"

    const-string v2, "Kindle"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-gr-application-component"

    const-string v2, "SocialSharing"

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "x-gr-application-page"

    if-nez v1, :cond_0

    .line 44
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "UNKNOWN"

    .line 46
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_0
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "x-gr-hw-make"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "x-gr-hw-model"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "x-gr-os-version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "x-gr-application-version"

    .line 56
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 60
    sget-object v1, Lcom/amazon/kindle/socialsharing/service/RasMetadata;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve Kindle App version"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v0
.end method
