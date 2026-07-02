.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.source "FacebookShareTargetGridItem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final WEBDIALOG_RETRY_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V

    const/4 p1, 0x2

    .line 54
    iput p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->WEBDIALOG_RETRY_COUNT:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Lcom/facebook/Session;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->publishFeedDialog(Lcom/facebook/Session;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Landroid/app/Activity;Landroid/os/Bundle;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->openWebDialog(Landroid/app/Activity;Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private canShareWithApp(Landroid/content/Context;)Z
    .locals 3

    .line 297
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Facebook:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v0, 0x0

    .line 299
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 304
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    array-length v1, p1

    if-lez v1, :cond_1

    .line 306
    aget-object p1, p1, v0

    .line 308
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 310
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Facebook:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->isVersionBlocked(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 320
    sget-object v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Value was not a number"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 318
    sget-object v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error when retrieving package info"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private createBookShare(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Z
    .locals 13

    move-object v7, p0

    move-object v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 122
    invoke-virtual {p0, p2, v2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 124
    invoke-static {p2, v3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v2

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    .line 126
    iget-object v6, v1, Lcom/amazon/kindle/socialsharing/ShareContent;->facebookDescription:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v6, v5, v9

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getFacebookDescription()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x2

    aput-object v6, v5, v10

    invoke-static {v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    .line 127
    iget-object v11, v1, Lcom/amazon/kindle/socialsharing/ShareContent;->facebookTitle:Ljava/lang/String;

    aput-object v11, v6, v8

    iget-object v11, v1, Lcom/amazon/kindle/socialsharing/ShareContent;->genericTitle:Ljava/lang/String;

    aput-object v11, v6, v9

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getFacebookTitle()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-static {v6}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/String;

    .line 128
    iget-object v11, v1, Lcom/amazon/kindle/socialsharing/ShareContent;->facebookCaption:Ljava/lang/String;

    aput-object v11, v4, v8

    const/4 v11, 0x0

    aput-object v11, v4, v9

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getFacebookCaption()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v11, v10, [Ljava/lang/String;

    .line 129
    iget-object v12, v1, Lcom/amazon/kindle/socialsharing/ShareContent;->genericBackLink:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getGenericBacklink()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v11}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/String;

    .line 130
    iget-object v1, v1, Lcom/amazon/kindle/socialsharing/ShareContent;->genericImageUrl:Ljava/lang/String;

    aput-object v1, v12, v8

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getGenericImageUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v9

    invoke-static {v12}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {p2, v3}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-virtual {v0, v5}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v0, v6}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0, v11}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    iget-boolean v0, v7, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isInstalled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->canShareWithApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move-object v4, v5

    move-object v5, v8

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, v3

    move-object v2, v8

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 143
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->generateWebdialogDefaultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, p1

    .line 145
    invoke-direct {p0, p1, v0, v10}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->openWebDialog(Landroid/app/Activity;Landroid/os/Bundle;I)V

    :goto_0
    return v9
.end method

.method private createQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 86
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 88
    sget p3, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_linkshare_caption:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 88
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 91
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_linkshare_quote_share_description_formatter:I

    .line 92
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 91
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-boolean v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isInstalled:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->canShareWithApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move-object v5, p1

    move-object v7, v1

    move-object v8, p4

    move-object v9, p3

    .line 96
    invoke-virtual/range {v4 .. v10}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, v1

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->generateWebdialogDefaultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x2

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->openWebDialog(Landroid/app/Activity;Landroid/os/Bundle;I)V

    :goto_0
    return v0
.end method

.method private generateWebdialogDefaultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "link"

    .line 338
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "description"

    .line 340
    invoke-virtual {v0, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "picture"

    .line 342
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "name"

    .line 344
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "caption"

    .line 346
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private openWebDialog(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .locals 2

    if-gtz p3, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 254
    sget p3, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_error:I

    .line 255
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_message_generic_error:I

    .line 256
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$1;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;)V

    .line 254
    invoke-static {p3, p2, v0}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    move-result-object p2

    .line 263
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 267
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Landroid/app/Activity;Landroid/os/Bundle;I)V

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 285
    invoke-virtual {v0}, Lcom/facebook/Session;->refreshPermissions()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 282
    invoke-static {p1, p2, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    :goto_1
    return-void
.end method

.method private publishFeedDialog(Lcom/facebook/Session;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 360
    new-instance v0, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    invoke-direct {v0, p2, p1, p3}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Landroid/app/Activity;)V

    .line 362
    invoke-virtual {v0, p1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    check-cast v0, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    .line 402
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 212
    new-instance v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-direct {v0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 213
    invoke-virtual {v0, p4}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 214
    invoke-virtual {v0, p5}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 215
    invoke-virtual {v0, p3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 216
    invoke-virtual {v0, p6}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 217
    invoke-virtual {v0, p2}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$Builder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object p2

    .line 218
    invoke-virtual {p2}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 220
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->createBookShare(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareBookWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 194
    invoke-virtual {p0, p2, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getBookShareableString(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public shareFalkorBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 7

    .line 114
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 117
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->createBookShare(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareFalkorQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 2

    .line 69
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getStoryAsinForFalkorEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->createQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 227
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 229
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getBaseImageSharingIntent()Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.intent.extra.STREAM"

    .line 230
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 232
    invoke-virtual {p3, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 240
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 11

    .line 153
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 155
    sget p3, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_linkshare_caption:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 156
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 155
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 160
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_linkshare_progress_done_description_formatter:I

    .line 161
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 162
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 160
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_0
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_linkshare_progress_reading_description_formatter:I

    .line 165
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 166
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 167
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    .line 164
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :goto_0
    iget-boolean v3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->isInstalled:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->canShareWithApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move-object v5, p1

    move-object v7, v1

    move-object v9, p3

    .line 171
    invoke-virtual/range {v4 .. v10}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, v1

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->generateWebdialogDefaultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 176
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->openWebDialog(Landroid/app/Activity;Landroid/os/Bundle;I)V

    :goto_1
    return v0
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 1

    .line 64
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->createQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuoteWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_share_quote_with_image_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 187
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method
