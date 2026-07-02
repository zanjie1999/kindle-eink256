.class public Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;
.super Ljava/lang/Object;
.source "AudibleStoreUriBuilder.java"

# interfaces
.implements Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;


# static fields
.field private static final APP_PARAM:Ljava/lang/String; = "app"

.field private static final APP_PARAM_REDDING:Ljava/lang/String; = "redding"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SOURCE_CODE_PARAM:Ljava/lang/String; = "source_code"

.field private static final THEME_PARAM:Ljava/lang/String; = "theme"

.field static final WEBSITE_MAIN_PATH:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMarketPlace:Lcom/audible/mobile/identity/Marketplace;

.field private final mTheme:Lcom/amazon/kindle/krx/theme/Theme;

.field private final mUserAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

.field protected final uriTranslator:Lcom/audible/mobile/framework/UriTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "https://www.amazon.com/"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->WEBSITE_MAIN_PATH:Landroid/net/Uri;

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/theme/Theme;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/framework/UriTranslator;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/framework/UriTranslator;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/theme/Theme;Lcom/audible/mobile/framework/UriTranslator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/theme/Theme;Lcom/audible/mobile/framework/UriTranslator;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mUserAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    .line 65
    invoke-static {p3}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/amazon/kindle/krx/theme/Theme;

    iput-object p3, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mTheme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 66
    invoke-static {p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/mobile/framework/UriTranslator;

    iput-object p4, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    .line 67
    invoke-direct {p0}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->updateUserPfm()V

    return-void
.end method

.method private buildMatchmakerUri()Landroid/net/Uri;
    .locals 4

    .line 107
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Build matchmaker url"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->WEBSITE_MAIN_PATH:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hz/audible/matchmaker"

    .line 109
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app"

    const-string v2, "redding"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 110
    invoke-direct {p0}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->getSourceCodeForMatchMaker()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_code"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mTheme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 111
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method private buildUpgraderUri()Landroid/net/Uri;
    .locals 4

    .line 124
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Build upgrader url"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->WEBSITE_MAIN_PATH:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hz/audible/upgrader/"

    .line 126
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app"

    const-string v2, "redding"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->getSourceCodeForUpgrader()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_code"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mTheme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 128
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSourceCodeForMatchMaker()Ljava/lang/String;
    .locals 3

    .line 136
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->matchMakerSourceCode:I

    .line 138
    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder$1;->$SwitchMap$com$audible$mobile$identity$Marketplace:[I

    iget-object v2, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mMarketPlace:Lcom/audible/mobile/identity/Marketplace;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->matchMakerSourceCodeAu:I

    goto :goto_0

    .line 143
    :cond_1
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->matchMakerSourceCodeDe:I

    goto :goto_0

    .line 140
    :cond_2
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->matchMakerSourceCodeUk:I

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSourceCodeForUpgrader()Ljava/lang/String;
    .locals 3

    .line 154
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upgraderSourceCode:I

    .line 156
    sget-object v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder$1;->$SwitchMap$com$audible$mobile$identity$Marketplace:[I

    iget-object v2, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mMarketPlace:Lcom/audible/mobile/identity/Marketplace;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upgraderSourceCodeAu:I

    goto :goto_0

    .line 161
    :cond_1
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upgraderSourceCodeDe:I

    goto :goto_0

    .line 158
    :cond_2
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->upgraderSourceCodeUk:I

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateUserPfm()V
    .locals 5

    .line 75
    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_US:Lcom/audible/mobile/identity/Marketplace;

    iput-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mMarketPlace:Lcom/audible/mobile/identity/Marketplace;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mUserAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mUserAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/identity/Marketplace;->getMarketplaceFromMarketplaceId(Ljava/lang/String;)Lcom/audible/mobile/identity/Marketplace;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mMarketPlace:Lcom/audible/mobile/identity/Marketplace;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retreive marketplace, user preferred marketplace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mUserAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_US:Lcom/audible/mobile/identity/Marketplace;

    iput-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->mMarketPlace:Lcom/audible/mobile/identity/Marketplace;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public buildUriForStore(Lcom/audible/android/kcp/store/StoreType;)Landroid/net/Uri;
    .locals 1

    .line 90
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder$1;->$SwitchMap$com$audible$android$kcp$store$StoreType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->buildMatchmakerUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;->buildUpgraderUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
