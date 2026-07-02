.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.source "SmsShareTargetGridItem.java"


# static fields
.field private static final PRE_KITKAT_EXTRA:Ljava/lang/String; = "sms_body"

.field private static final PRE_KITKAT_MIME_TYPE:Ljava/lang/String; = "vnd.android-dir/mms-sms"

.field private static final PRE_KITKAT_URI_SCHEME:Ljava/lang/String; = "smsto:"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V

    return-void
.end method

.method private getIntentForSharing(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x14000000

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 133
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;->getDefaultSmsAppPackageName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "android.intent.extra.TEXT"

    .line 141
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 144
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "smsto:"

    .line 146
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "vnd.android-dir/mms-sms"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sms_body"

    .line 148
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected getBookShareableDescription(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;
    .locals 4

    .line 161
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 162
    iget-object v2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->smsDescription:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getSmsDescription()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 163
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 78
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->getIntentForSharing(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 83
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x10

    if-le p3, p4, :cond_0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 0

    .line 72
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->getBookShareableDescription(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object p4

    .line 73
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareBookWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 104
    invoke-virtual {p0, p2, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->getBookShareableDescription(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 112
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 115
    invoke-direct {p0, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->getIntentForSharing(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.intent.extra.STREAM"

    .line 116
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x10

    if-le p2, p4, :cond_0

    .line 120
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 5

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 60
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->sms_share_progress_formatter_book_done_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 61
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->sms_share_progress_formatter_reading_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 4

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->sms_share_quote_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuoteWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->sms_share_quote_with_image_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 97
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

    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    return v1
.end method
