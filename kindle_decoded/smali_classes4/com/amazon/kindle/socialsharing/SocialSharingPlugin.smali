.class public Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;
.super Ljava/lang/Object;
.source "SocialSharingPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# static fields
.field private static final CHINA_MARKETPLACE_ID:Ljava/lang/String; = "AAHKV2X7AFYLW"

.field private static final CLASS_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.SocialSharingPlugin"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"

.field private static final SOFTWARE_VERSION_NAME_DEFAULT:Ljava/lang/String; = "UNKNOWN"

.field protected static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private static socialSharingPlugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;


# instance fields
.field private accountChangeListener:Lcom/amazon/kindle/socialsharing/AccountChangeListener;

.field private httpStack:Lcom/amazon/kindle/socialsharing/service/AuthenticationAwareHurlStack;

.field private isSocialSharingRegistered:Z

.field private pmet:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

.field private socialSharingServiceClient:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->isSocialSharingRegistered:Z

    return-void
.end method

.method public static canShare(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/Boolean;
    .locals 6

    .line 110
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    .line 118
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isValidAsin(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 119
    sget-object v4, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    sget-object v4, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {p0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    .line 123
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 127
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public static getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;
    .locals 1

    .line 139
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->socialSharingPlugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 3

    .line 314
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result v0

    .line 316
    sget-object v1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    const/4 v2, 0x3

    .line 317
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getAccountProperty(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHILD"

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "SocialSharing"

    const-string v2, "Social Sharing plugin is not enabled"

    .line 322
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static isUserMarketPlaceChina()Z
    .locals 2

    .line 334
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AAHKV2X7AFYLW"

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerSocialSharingMetadataProvider()V
    .locals 2

    .line 199
    new-instance v0, Lcom/amazon/kindle/socialsharing/entrypoints/SocialSharingMetadataProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/entrypoints/SocialSharingMetadataProvider;-><init>()V

    .line 200
    sget-object v1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerAdditionalMetadataProvider(Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;)V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStack()Lcom/android/volley/toolbox/HttpStack;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->httpStack:Lcom/amazon/kindle/socialsharing/service/AuthenticationAwareHurlStack;

    return-object v0
.end method

.method public getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->pmet:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    return-object v0
.end method

.method public getSocialSharingServiceClient()Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->socialSharingServiceClient:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 3

    .line 148
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    sget-object v2, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->CLASS_TAG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Unable to find the software version"

    aput-object v2, v0, v1

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SDK cannot be null during initialization"

    .line 163
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    new-instance v2, Lcom/amazon/kindle/socialsharing/service/AuthenticationAwareHurlStack;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/socialsharing/service/AuthenticationAwareHurlStack;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->httpStack:Lcom/amazon/kindle/socialsharing/service/AuthenticationAwareHurlStack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    sget-object v2, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->CLASS_TAG:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "Initializing Social Sharing plugin"

    aput-object v2, v1, v0

    const-string v0, "%s: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sput-object p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->socialSharingPlugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    .line 168
    sput-object p1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_1

    .line 170
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->inDemoMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->initializeClassFactoryProvider()V

    .line 177
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->peformAccountChangeSetup()V

    .line 178
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->registerSocialSharingProviders()V

    .line 179
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->registerSocialSharingMetadataProvider()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "in demo mode, not initializing plugin"

    .line 171
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected initializeClassFactoryProvider()V
    .locals 3

    .line 191
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->INSTANCE:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    new-instance v1, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;

    invoke-direct {v1}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->initializeClassFactory(Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;)V
    :try_end_0
    .catch Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider$ClassFactoryAlreadyInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SocialSharing"

    const-string v2, "Attempting to initialize class factory after it has already been set"

    .line 194
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected initializeShareButtonProviders()V
    .locals 14

    .line 248
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->progress_share_button_text_library:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 253
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->progress_share_button_text_reader:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 255
    const-class v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    .line 256
    new-instance v9, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;

    sget-object v1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v9, v1, v0}, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/DarkModeHelper;)V

    .line 258
    new-instance v0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareQuoteButton;

    sget-object v1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1, v9}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareQuoteButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;)V

    .line 259
    new-instance v0, Lcom/amazon/kindle/socialsharing/entrypoints/NewShareQuoteButton;

    sget-object v1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1, v9}, Lcom/amazon/kindle/socialsharing/entrypoints/NewShareQuoteButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;)V

    .line 261
    new-instance v1, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;

    sget-object v2, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v3, "LIBRARY"

    const-string v4, "362346"

    invoke-direct {v1, v2, v9, v3, v4}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v13, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;

    sget-object v3, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v5, "LIBRARY"

    const-string v7, "085184"

    move-object v2, v13

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v2, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;

    sget-object v3, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v4, "READER"

    const-string v5, "672057"

    invoke-direct {v2, v3, v9, v4, v5}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v3, Lcom/amazon/kindle/socialsharing/entrypoints/ShareStoryButton;

    sget-object v5, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v6, "682055"

    invoke-direct {v3, v5, v9, v4, v6}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareStoryButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v4, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;

    sget-object v8, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v10, "READER"

    const-string v12, "195804"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 269
    sget-object v6, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->CLASS_TAG:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v7, "Registering button providers"

    aput-object v7, v5, v6

    const-string v6, "%s: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SocialSharing"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v5, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v5

    .line 272
    invoke-interface {v5, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 273
    invoke-interface {v5, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 274
    invoke-interface {v5, v4}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 275
    invoke-interface {v5, v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 277
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    .line 278
    invoke-virtual {v13}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getListAdapter()Lcom/amazon/kindle/krx/providers/ISortableProvider;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 279
    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getListAdapter()Lcom/amazon/kindle/krx/providers/ISortableProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public isReleaseBuild()Z
    .locals 7

    const-string v0, "%s: %s"

    const-string v1, "SocialSharing"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 289
    :try_start_0
    sget-object v5, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/socialsharing/common/R$bool;->is_release_build:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    .line 296
    sget-object v6, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->CLASS_TAG:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v4, "RELEASE BUILD"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 298
    sget-object v6, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->CLASS_TAG:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v4, "DEBUG BUILD"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :catch_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 291
    sget-object v5, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->CLASS_TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v5, "\'is_release_build\' flag was not found in the resource. Defaulting to DEBUG BUILD"

    aput-object v5, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method protected peformAccountChangeSetup()V
    .locals 2

    .line 210
    new-instance v0, Lcom/amazon/kindle/socialsharing/AccountChangeListener;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/AccountChangeListener;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->accountChangeListener:Lcom/amazon/kindle/socialsharing/AccountChangeListener;

    .line 211
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->accountChangeListener:Lcom/amazon/kindle/socialsharing/AccountChangeListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 220
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/amazon/kindle/socialsharing/AccountChangeListener;->performActionsForDeregistration()V

    :cond_0
    return-void
.end method

.method protected registerSocialSharingProviders()V
    .locals 4

    .line 229
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->isSocialSharingRegistered:Z

    if-eqz v0, :cond_0

    const-string v0, "SocialSharing"

    const-string v1, "Social Sharing providers are already registered"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->isSocialSharingRegistered:Z

    .line 238
    new-instance v0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;

    sget-object v1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->pmet:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    .line 240
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    sget-object v1, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    sget-object v2, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->socialSharingPlugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getHttpStack()Lcom/android/volley/toolbox/HttpStack;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Lcom/android/volley/toolbox/HttpStack;)V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->socialSharingServiceClient:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    .line 242
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/socialsharing/SharingNavigationListener;

    invoke-direct {v1}, Lcom/amazon/kindle/socialsharing/SharingNavigationListener;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->initializeShareButtonProviders()V

    return-void
.end method
