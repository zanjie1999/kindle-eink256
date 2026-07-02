.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.super Ljava/lang/Object;
.source "ShareTargetGridItem.java"


# static fields
.field private static CLASS_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ui.gridItem.ShareTargetGridItem"

.field private static final LOG_FORMAT:Ljava/lang/String; = "%s: %s"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"


# instance fields
.field protected final closeAfterSharing:Z

.field protected final iconImage:Landroid/graphics/drawable/Drawable;

.field protected final isImageSharingSupported:Z

.field protected final isInstalled:Z

.field protected final itemTitle:Ljava/lang/String;

.field protected final packageName:Ljava/lang/String;

.field protected final priority:I

.field protected final targetAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->itemTitle:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getTargetAlias()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->targetAlias:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->iconImage:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-boolean p4, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isInstalled:Z

    .line 99
    iput p5, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->priority:I

    .line 100
    iput-boolean p6, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->closeAfterSharing:Z

    .line 101
    iput-boolean p7, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isImageSharingSupported:Z

    return-void
.end method

.method protected static varargs getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 382
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 383
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTargetAlias()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getAppByPackageName(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    return-object v0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "socialsharing.fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseImageSharingIntent()Landroid/content/Intent;
    .locals 2

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x80001

    .line 406
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getBookShareableString(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;
    .locals 3

    .line 397
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 398
    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getGenericDescription()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 400
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 401
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCloseAfterSharing()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->closeAfterSharing:Z

    return v0
.end method

.method public getIconImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->iconImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->itemTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getMetricName()Ljava/lang/String;
    .locals 4

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getMetricName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "%s: %s"

    .line 177
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->priority:I

    return v0
.end method

.method public isAppInstalled()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isInstalled:Z

    return v0
.end method

.method public isImageSharingSupported()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isImageSharingSupported:Z

    return v0
.end method

.method protected share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 327
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 329
    new-instance p2, Landroid/content/Intent;

    const-string p4, "android.intent.action.SEND"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x14000000

    .line 330
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p4, "text/plain"

    .line 331
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object p4, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "android.intent.extra.TEXT"

    .line 334
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 0

    .line 220
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getBookShareableString(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object p4

    .line 221
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareBookWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 266
    invoke-virtual {p0, p2, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getBookShareableString(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public shareFalkorBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 0

    .line 234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z

    move-result p1

    return p1
.end method

.method public shareFalkorQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 283
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 286
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getBaseImageSharingIntent()Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.intent.extra.STREAM"

    .line 287
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 289
    invoke-virtual {p3, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 7

    .line 304
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 308
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->share_progress_book_done_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 309
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 308
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_0
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->share_progress_book_reading_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 312
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 311
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 4

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->share_quote_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 193
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 194
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 193
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuoteWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11

    .line 248
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->share_quote_with_image_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 250
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    return v1
.end method

.method protected startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 349
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "startActivity did not find %s activity"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "SocialSharing"

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 358
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_error:I

    .line 359
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_message_generic_error:I

    .line 360
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem$1;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;)V

    .line 358
    invoke-static {v0, p2, v1}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    move-result-object p2

    .line 367
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getItemTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getMetricName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->targetAlias:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
