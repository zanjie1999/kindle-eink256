.class public Lcom/amazon/kindle/socialsharing/util/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# static fields
.field private static final FREE_APP_LINK_US:Ljava/lang/String; = "http://amzn.to/1r0LubW"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERF:Ljava/lang/String; = "PERF"

.field private static final UNIFIED_SHARE_FACEBOOK_PACKAGE:Ljava/lang/String; = "com.amazon.unifiedsharefacebook"

.field private static final UNIFIED_SHARE_TWITTER_PACKAGE:Ljava/lang/String; = "com.amazon.unifiedsharetwitter"

.field private static final UNIFIED_SHARE_WEIBO_PACKAGE:Ljava/lang/String; = "com.amazon.unifiedsharesinaweibo"

.field private static installedPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final marketplaceToLinkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static shareApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->installedPackageNames:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "ATVPDKIKX0DER"

    const-string v2, "http://amzn.to/1r0LubW"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A1F83G8C2ARO7P"

    const-string v2, "http://amzn.to/1WLoAkB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A1PA6795UKMFR9"

    const-string v2, "http://amzn.to/1L57czN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A13V1IB3VIYZZH"

    const-string v2, "http://amzn.to/1OWDO4W"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A1RKKUPIHCS9HS"

    const-string v2, "http://amzn.to/1MbOBGM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A21TJRUUN4KGV"

    const-string v2, "http://amzn.to/1VDAcDO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "APJ6JRA9NG5V4"

    const-string v2, "http://amzn.to/1jMOk1N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A1VC38T7YXB528"

    const-string v2, "http://amzn.to/1Q5Luz3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A2EUQ1WTGCTBG2"

    const-string v2, "http://amzn.to/1OjZI20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "AAHKV2X7AFYLW"

    const-string v2, "http://amzn.to/1QXpxm0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A2Q3Y263D00KWC"

    const-string v2, "http://amzn.to/1QXpzKK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A1AM78C64UM0Y8"

    const-string v2, "http://amzn.to/1RsEEVx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A39IBJ37TRP1C6"

    const-string v2, "http://amzn.to/1Lgrnyd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    const-string v1, "A1805IZSGTT6HS"

    const-string v2, "http://amzn.to/1MXE68y"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGetProgress(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 394
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 399
    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static canPerformBookShare(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 427
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->canShare(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static canPerformProgressShare(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 431
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->canShare(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 436
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canGetProgress(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 441
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static canPerformQuoteShare(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    .line 472
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->canShare(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 477
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->DEFAULT:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Book content class is not DEFAULT; quote sharing is not enabled. Content Class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static canPerformQuoteShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;)Z
    .locals 2

    .line 450
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canPerformQuoteShare(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 455
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 460
    :cond_1
    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 465
    :cond_2
    sget-object p1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->LOG_TAG:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "Quote sharing is enabled."

    const/4 p3, 0x1

    aput-object p0, p2, p3

    const-string p0, "ASIN: %s. %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_3
    :goto_0
    return v1
.end method

.method private static getAllSharePackages(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getBaseMoreButtonShareIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 318
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getApplication(Landroid/content/Context;Lcom/amazon/kindle/socialsharing/util/AppListEnum;Z)Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getGridItemClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-class v0, Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-object v0, v3, v8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x5

    aput-object v0, v3, v9

    const/4 v10, 0x6

    aput-object v0, v3, v10

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 252
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getGridItemPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getIcon()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getPriority()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v8

    .line 254
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getCloseAfterSharing()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v9

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->isImageSharingSupported()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v10

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    return-object p0
.end method

.method public static getBaseEmailIntent()Landroid/content/Intent;
    .locals 2

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/html"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mailto:"

    .line 373
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBaseMoreButtonShareIntent()Landroid/content/Intent;
    .locals 2

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 490
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 491
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->share_dialog_title_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "BOOK"

    .line 494
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    sget p0, Lcom/amazon/kindle/socialsharing/common/R$string;->share_dialog_title_book:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "PROGRESS"

    .line 497
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    sget p0, Lcom/amazon/kindle/socialsharing/common/R$string;->share_dialog_title_progress:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "QUOTE"

    .line 500
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    sget p0, Lcom/amazon/kindle/socialsharing/common/R$string;->share_dialog_title_quote:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "FALKOR_STORY"

    .line 502
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 503
    sget p0, Lcom/amazon/kindle/socialsharing/common/R$string;->share_dialog_title_falkor_story:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getEmailAppIsInstalled()Z
    .locals 1

    .line 384
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledEmailResolveInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.amazon.com/dp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFreeAppLink()Ljava/lang/String;
    .locals 2

    .line 510
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 514
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->marketplaceToLinkMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "http://amzn.to/1r0LubW"

    return-object v0
.end method

.method public static getGridItemFiltersFromExtras(Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/util/appFiltering/IGridItemsFilter;",
            ">;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    .line 545
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QUOTE_IMAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 547
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "BOOK_IMAGE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 548
    :cond_0
    new-instance p0, Lcom/amazon/kindle/socialsharing/util/appFiltering/ImageSupportedGridItemsFilter;

    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/util/appFiltering/ImageSupportedGridItemsFilter;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static getGridItemList(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/util/appFiltering/IGridItemsFilter;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {p0, p1, p3}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledApplication(Landroid/content/Context;ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/socialsharing/util/appFiltering/IGridItemsFilter;

    .line 151
    invoke-interface {p1, v0}, Lcom/amazon/kindle/socialsharing/util/appFiltering/IGridItemsFilter;->filterGridItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstalledActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->shareApps:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->shareApps:Ljava/util/ArrayList;

    .line 118
    :cond_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->shareApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;-><init>()V

    .line 121
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->start()V

    .line 122
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 126
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->stop()V

    .line 127
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->getTime()J

    move-result-wide v0

    .line 128
    sget-object v3, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "PERF"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v1, "Retrieving all installed apps"

    aput-object v1, v4, v0

    const-string v0, "%s:%s:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getInstalledApplication(Landroid/content/Context;ZLjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    const-class v1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;

    monitor-enter v1

    const/4 v2, 0x0

    .line 169
    :try_start_0
    sput-object v2, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->installedPackageNames:Ljava/util/Set;

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getAppsPresentIfInstalled()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    :try_start_1
    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->isBlockedInCurrentMarketPlace()Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    sget-object v5, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Goodreads:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    if-ne v2, v5, :cond_1

    if-eqz p1, :cond_0

    const-string v5, "QUOTE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->isAppInstalled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    invoke-static {p0, v2}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->isVersionSupported(Landroid/content/Context;Lcom/amazon/kindle/socialsharing/util/AppListEnum;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    invoke-static {p0, v2, v3}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getApplication(Landroid/content/Context;Lcom/amazon/kindle/socialsharing/util/AppListEnum;Z)Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->canShareWhenNotInstalled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-static {p0, v2, v4}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getApplication(Landroid/content/Context;Lcom/amazon/kindle/socialsharing/util/AppListEnum;Z)Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->canShareWhenNotInstalled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    invoke-static {p0, v2, v4}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getApplication(Landroid/content/Context;Lcom/amazon/kindle/socialsharing/util/AppListEnum;Z)Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 193
    sget-object v5, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->LOG_TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    .line 194
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "Error when trying to get the supporting app grid item: %s"

    .line 193
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception p0

    .line 170
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getInstalledEmailPackageNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledEmailResolveInfos()Ljava/util/List;

    move-result-object v0

    .line 417
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 420
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getInstalledEmailResolveInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 407
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getBaseEmailIntent()Landroid/content/Intent;

    move-result-object v0

    .line 408
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstalledPackageNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazon/kindle/socialsharing/util/ShareHelper;

    monitor-enter v0

    .line 355
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->installedPackageNames:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 356
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 358
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->installedPackageNames:Ljava/util/Set;

    .line 359
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 360
    sget-object v3, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->installedPackageNames:Ljava/util/Set;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_0
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->installedPackageNames:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMoreButton(Landroid/content/Context;Ljava/util/List;)Lcom/amazon/kindle/socialsharing/ui/gridItem/MoreButtonShareTargetGridItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;)",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/MoreButtonShareTargetGridItem;"
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getPackageNamesToExclude(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 261
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/MoreButtonShareTargetGridItem;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/amazon/kindle/socialsharing/common/R$drawable;->more_icon:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/MoreButtonShareTargetGridItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    return-object v0
.end method

.method private static getPackageNamesToExclude(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    .line 297
    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "com.amazon.unifiedsharefacebook"

    .line 299
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "com.amazon.unifiedsharetwitter"

    .line 300
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "com.amazon.unifiedsharesinaweibo"

    .line 301
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledEmailPackageNames()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static isVersionSupported(Landroid/content/Context;Lcom/amazon/kindle/socialsharing/util/AppListEnum;)Z
    .locals 4

    .line 209
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getMinAppVersion()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getGridItemPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 217
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 219
    array-length v2, p0

    if-lez v2, :cond_1

    .line 220
    aget-object p0, p0, v0

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 224
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getMinAppVersion()I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p0, p1, :cond_1

    return v1

    :catch_0
    move-exception p0

    .line 232
    sget-object p1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Value was not a number"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 230
    sget-object p1, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error when retrieving package info"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static shouldShowMoreButton(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;)Z"
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getPackageNamesToExclude(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 273
    invoke-static {p0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getAllSharePackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 275
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 523
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v0

    .line 525
    invoke-static {p2, p0, p1}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->getMetamapForShare(Ljava/lang/String;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->recordMetadata(Ljava/util/Map;)V

    .line 526
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object p2

    invoke-interface {p2, p0, p3, p1}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->reportShareApp(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingServiceClient()Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;

    move-result-object p2

    .line 530
    :try_start_0
    invoke-interface {p2, p0, p4, p1}, Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 532
    sget-object p2, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Update the share: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
