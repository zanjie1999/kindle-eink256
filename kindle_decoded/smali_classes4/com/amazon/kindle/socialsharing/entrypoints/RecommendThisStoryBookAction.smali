.class Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;
.source "RecommendThisStoryBookActionFactory.java"


# static fields
.field private static final BUTTON_PRIORITY:I = 0xa

.field private static final ENTRY_POINT:Ljava/lang/String; = "LIBRARY"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final shareAsin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 74
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->shareAsin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 100
    sget-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->shareAsin:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ASIN: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->INSTANCE:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    invoke-virtual {v3}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->getFactory()Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;

    move-result-object v3

    const-string v4, "LIBRARY"

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;->getSocialSharingActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    .line 107
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->shareAsin:Ljava/lang/String;

    const-string v3, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    const-string v3, "FALKOR_STORY"

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.ENABLE_GOODREADS_PROGRESS_SHARE"

    .line 110
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->shareAsin:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_OVERRIDE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.kindle.socialsharing.CONTENT_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception launching the social sharing plugin with a recommend the story intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 87
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 88
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 89
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v2

    .line 86
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLibraryShareIcon(ZLcom/amazon/kindle/krx/theme/Theme;Lcom/amazon/kindle/krx/application/AppType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->story_recommend_button_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
