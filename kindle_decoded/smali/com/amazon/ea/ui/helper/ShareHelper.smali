.class public Lcom/amazon/ea/ui/helper/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# static fields
.field private static final SOCIAL_SHARING_ACTIVITY_NAME:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ui.activity.SocialSharingActivity"

.field private static final SOCIAL_SHARING_CONTENT_TYPE_BOOK_SAMPLE:Ljava/lang/String; = "BOOK_SAMPLE"

.field private static final SOCIAL_SHARING_ENABLE_GOODREADS_PROGRESS_SHARE:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ENABLE_GOODREADS_PROGRESS_SHARE"

.field private static final SOCIAL_SHARING_EXTRA_ASIN:Ljava/lang/String; = "com.amazon.kindle.socialsharing.EXTRA_ASIN"

.field private static final SOCIAL_SHARING_EXTRA_BOOK_FORMAT:Ljava/lang/String; = "com.amazon.kindle.socialsharing.BOOK_FORMAT"

.field private static final SOCIAL_SHARING_EXTRA_CONTENT_TYPE:Ljava/lang/String; = "com.amazon.kindle.socialsharing.CONTENT_TYPE"

.field private static final SOCIAL_SHARING_EXTRA_ENTRY_POINT:Ljava/lang/String; = "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

.field private static final SOCIAL_SHARING_EXTRA_REF_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.EXTRA_REF_TAG"

.field private static final SOCIAL_SHARING_EXTRA_SHARE_TYPE:Ljava/lang/String; = "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

.field private static final SOCIAL_SHARING_EXTRA_THEME:Ljava/lang/String; = "com.amazon.kindle.socialsharing.EXTRA_THEME"

.field private static final SOCIAL_SHARING_PREFIX:Ljava/lang/String; = "com.amazon.kindle.socialsharing."

.field private static final SOCIAL_SHARING_SHARE_TYPE_BOOK:Ljava/lang/String; = "BOOK"

.field private static final SOCIAL_SHARING_SHARE_TYPE_UNVERIFIED_BOOK:Ljava/lang/String; = "UNVERIFIED_BOOK"

.field private static final SOCIAL_SHARING_THEME_DARK:Ljava/lang/String; = "THEME_DARK"

.field private static final SOCIAL_SHARING_THEME_LIGHT:Ljava/lang/String; = "THEME_LIGHT"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.helper.ShareHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getBasicShareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.amazon.kindle.socialsharing.ui.activity.SocialSharingActivity"

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    .line 141
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.amazon.kindle.socialsharing.EXTRA_REF_TAG"

    .line 142
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static initMetricsForShareIconNotShown()V
    .locals 4

    .line 191
    invoke-static {}, Lcom/amazon/ea/metrics/RefTagHelper;->getLayoutModelMetricsTag()Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedShareActionBarIcon"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 194
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method public static initMetricsForShareIconShown()V
    .locals 4

    .line 174
    invoke-static {}, Lcom/amazon/ea/metrics/RefTagHelper;->getLayoutModelMetricsTag()Ljava/lang/String;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedShareActionBarIcon"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 177
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 179
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ShareActionBarIconClicked"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    const-string v1, "DisplayedActionBarItemShare"

    .line 182
    invoke-static {v1, v0, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isSharingSupported()Z
    .locals 4

    .line 154
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    .line 160
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.krx.library.BookMetadataKey.BOOK_SHARING_ENABLED"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    sget-object v0, Lcom/amazon/ea/ui/helper/ShareHelper;->TAG:Ljava/lang/String;

    const-string v2, "Sharing is not supported"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static setIntentTheme(Landroid/content/Intent;)V
    .locals 3

    .line 114
    const-class v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_THEME"

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 115
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, v2, :cond_0

    const-string v0, "THEME_DARK"

    .line 117
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "THEME_LIGHT"

    .line 119
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static shareBook(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    invoke-static {p1, p0}, Lcom/amazon/ea/ui/helper/ShareHelper;->getBasicShareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 75
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    const-string v0, "BOOK"

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "com.amazon.kindle.socialsharing.ENABLE_GOODREADS_PROGRESS_SHARE"

    .line 77
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-static {p0}, Lcom/amazon/ea/ui/helper/ShareHelper;->setIntentTheme(Landroid/content/Intent;)V

    .line 79
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p1
.end method

.method public static shareBookGridItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 95
    invoke-static {p1, p2}, Lcom/amazon/ea/ui/helper/ShareHelper;->getBasicShareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    .line 97
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    const-string p2, "UNVERIFIED_BOOK"

    .line 98
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.amazon.kindle.socialsharing.CONTENT_TYPE"

    const-string p2, "BOOK_SAMPLE"

    .line 99
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.amazon.kindle.socialsharing.ENABLE_GOODREADS_PROGRESS_SHARE"

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-static {p1}, Lcom/amazon/ea/ui/helper/ShareHelper;->setIntentTheme(Landroid/content/Intent;)V

    .line 102
    sget-object p0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
