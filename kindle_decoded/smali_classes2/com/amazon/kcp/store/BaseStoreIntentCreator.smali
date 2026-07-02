.class public Lcom/amazon/kcp/store/BaseStoreIntentCreator;
.super Ljava/lang/Object;
.source "BaseStoreIntentCreator.java"

# interfaces
.implements Lcom/amazon/kcp/store/IStoreIntentCreator;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected appController:Lcom/amazon/kcp/application/IAndroidApplicationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/store/BaseStoreIntentCreator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-void
.end method


# virtual methods
.method public createBrowseNodeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createDetailPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 45
    sget-object p1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported call to createDetailPageIntent(Context, String)"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createFeatureDocIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 91
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createLoadArticleIntent(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 74
    sget-object p1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported call to createLoadArticleIntent"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 51
    sget-object p1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported call to createLoadUrlIntent"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 57
    sget-object p1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported call to createLoadUrlIntent"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSearchUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 80
    sget-object p1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported call to createSearchUrlIntent"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 33
    sget-object p1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported call to createShowPageIntent"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createShowStoreIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    .line 97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createShowStorefrontIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/kindle/store/StoreType;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/store/StoreType;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 39
    sget-object p1, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->TAG:Ljava/lang/String;

    const-string p2, "Unsupported call to createShowStorefrontIntent"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
