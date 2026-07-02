.class public Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata;
.super Ljava/lang/Object;
.source "GoodreadsMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
    }
.end annotation


# static fields
.field private static final KEY_APPLICATION:Ljava/lang/String; = "x-gr-application"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "x-gr-application-version"

.field private static final KEY_COMPONENT:Ljava/lang/String; = "x-gr-application-component"

.field private static final KEY_HARDWARE_MAKE:Ljava/lang/String; = "x-gr-hw-make"

.field private static final KEY_HARDWARE_MODEL:Ljava/lang/String; = "x-gr-hw-model"

.field private static final KEY_ORIGIN:Ljava/lang/String; = "x-gr-application-page"

.field private static final KEY_OS_VERSION:Ljava/lang/String; = "x-gr-os-version"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.goodreadsshelf.service.GoodreadsMetadata"

.field private static final VALUE_APPLICATION:Ljava/lang/String; = "Kindle"

.field private static final VALUE_COMPONENT:Ljava/lang/String; = "AutoShelving"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static getGoodreadsMetaDataHeaders(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "x-gr-application"

    const-string v2, "Kindle"

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "x-gr-application-component"

    const-string v2, "AutoShelving"

    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->originName:Ljava/lang/String;

    const-string/jumbo v1, "x-gr-application-page"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "x-gr-hw-make"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "x-gr-hw-model"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "x-gr-os-version"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :try_start_0
    sget-object p0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const-string/jumbo v1, "x-gr-application-version"

    .line 60
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve Kindle App version"

    invoke-static {v1, v2, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
