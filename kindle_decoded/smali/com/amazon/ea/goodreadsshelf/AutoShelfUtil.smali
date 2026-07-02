.class public Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;
.super Ljava/lang/Object;
.source "AutoShelfUtil.java"


# static fields
.field private static final ENABLED_MARKETPLACES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_ACTIONS_AUTO_SHELF_PREFERENCE:Ljava/lang/String; = "startActionsAutoShelvingPreference"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "ATVPDKIKX0DER"

    const-string v2, "A21TJRUUN4KGV"

    const-string v3, "A39IBJ37TRP1C6"

    const-string v4, "A2EUQ1WTGCTBG2"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->ENABLED_MARKETPLACES:Ljava/util/List;

    return-void
.end method

.method public static getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;
    .locals 1

    const-string v0, "anyactions.autoshelving.updateshelferror"

    .line 86
    invoke-static {v0, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->getFromString(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object p0

    return-object p0
.end method

.method public static isAutoShelvingEnabled()Z
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isAutoShelvingFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isAutoShelvingEnabledForPfm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAutoShelvingEnabledForPfm()Z
    .locals 2

    .line 53
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->ENABLED_MARKETPLACES:Ljava/util/List;

    invoke-static {}, Lcom/amazon/ea/util/MarketplaceUtil;->getUserPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isAutoShelvingFeatureEnabled()Z
    .locals 2

    .line 44
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->AUTO_SHELF:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    return v0
.end method

.method public static isStartActionsAutoShelvingPreferred()Z
    .locals 2

    const-string v0, "anyactions.autoshelving"

    const-string/jumbo v1, "startActionsAutoShelvingPreference"

    .line 63
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setStartActionsAutoShelvingPreference(Z)V
    .locals 2

    const-string v0, "anyactions.autoshelving"

    const-string/jumbo v1, "startActionsAutoShelvingPreference"

    .line 74
    invoke-static {v0, v1, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "anyactions.autoshelving.updateshelferror"

    .line 96
    invoke-static {v0, p0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
