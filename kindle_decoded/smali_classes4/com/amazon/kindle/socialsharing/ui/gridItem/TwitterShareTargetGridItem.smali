.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.source "TwitterShareTargetGridItem.java"


# static fields
.field private static final FALLBACK_TWITTER_URL:Ljava/lang/String; = "https://twitter.com/intent/tweet?text=%s"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final isInstalled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V

    .line 52
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->isInstalled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected getBookShareableMessage(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;
    .locals 4

    .line 233
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 235
    iget-object v2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->twitterDescription:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getBookLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getTwitterDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 237
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 239
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getBookShareableUrl(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;
    .locals 3

    .line 266
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 268
    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericImageUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getGenericImageUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 270
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 271
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFalkorBookShareableMessage(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 250
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 252
    iget-object v2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->twitterDescription:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getBookLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getFalkorShareTwitterDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 256
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFalkorBookShareableUrl(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 283
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 285
    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericImageUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getGenericImageUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 287
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 288
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 172
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 173
    iget-object p4, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->isInstalled:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/high16 v0, 0x14000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    .line 174
    new-instance p4, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {p4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "*/*"

    .line 175
    invoke-virtual {p4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    .line 177
    invoke-virtual {p4, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getBookId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getBookId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/amazon/kindle/socialsharing/util/BookCoverHelper;->prepareCoverImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 186
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.extra.STREAM"

    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    :cond_1
    invoke-virtual {p4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, p1, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return v2

    .line 181
    :cond_2
    :goto_0
    new-instance p3, Lcom/amazon/kindle/socialsharing/util/DownloadImage;

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p4, p2}, Lcom/amazon/kindle/socialsharing/util/DownloadImage;-><init>(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/String;

    aput-object p5, p1, v1

    invoke-virtual {p3, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_3
    :try_start_0
    const-string p2, "https://twitter.com/intent/tweet?text=%s"

    new-array p4, v2, [Ljava/lang/Object;

    const-string p5, "UTF-8"

    .line 194
    invoke-static {p3, p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, v1

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 195
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 199
    sget-object p2, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Error while posting to Twitter webview "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 103
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->getBookShareableMessage(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->getBookShareableUrl(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareBookWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 158
    invoke-virtual {p0, p2, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->getBookShareableMessage(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public shareFalkorBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 110
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 112
    :cond_0
    invoke-virtual {p0, p2, p4, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->getFalkorBookShareableMessage(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {p0, p2, p4, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->getFalkorBookShareableUrl(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareFalkorQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 17

    .line 75
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getStoryAsinForFalkorEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getBookLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 82
    sget v4, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_total_limit:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_quote_quote:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6, v2}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, v2}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 85
    sget v7, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_falkor_quote_formatter_a:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v1

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const-string v11, ""

    const/4 v12, 0x2

    aput-object v11, v9, v12

    const/4 v13, 0x3

    aput-object v0, v9, v13

    .line 86
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 87
    sget v14, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_quote_formatter_by_author:I

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v15, v10, [Ljava/lang/Object;

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v1

    .line 87
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 89
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    sget v13, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_image_limit:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v15, v3

    sub-int/2addr v15, v4

    if-lez v15, :cond_1

    .line 92
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v15

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object v6, v3, v10

    aput-object v11, v3, v12

    const/4 v2, 0x3

    aput-object v0, v3, v2

    .line 94
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    .line 95
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v15, v3

    if-gtz v15, :cond_2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v5, v3, v1

    aput-object v6, v3, v10

    aput-object v14, v3, v12

    aput-object v0, v3, v2

    .line 96
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_0
    move-object v3, v9

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 208
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 209
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->isInstalled:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 212
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getBaseImageSharingIntent()Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.intent.extra.STREAM"

    .line 213
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 214
    invoke-virtual {p3, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Twitter not installed, cannot image share"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 10

    .line 119
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getBookLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v3

    invoke-static {v1, v3}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_progress_book_done_book_title:I

    .line 128
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 127
    invoke-static {v3, v8, v0}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_progress_book_done_author_name:I

    .line 130
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 129
    invoke-static {v8, v9, v0}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sget v8, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_progress_formatter_book_done_base_a:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v7

    aput-object v0, v4, v6

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_progress_book_reading_book_title:I

    .line 135
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 134
    invoke-static {v3, v8, v0}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_progress_book_reading_author_name:I

    .line 137
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 136
    invoke-static {v8, v9, v0}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget v8, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_progress_formatter_reading_base_a:I

    .line 139
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 140
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    aput-object v3, v8, v6

    aput-object v0, v8, v5

    aput-object v2, v8, v4

    .line 138
    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 143
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 13

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getBookLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 59
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_quote_quote:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_quote_book_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 61
    sget v3, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_quote_formatter_a:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const-string v8, ""

    const/4 v9, 0x2

    aput-object v8, v5, v9

    .line 62
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 63
    sget v8, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_quote_formatter_by_author:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v11, v7, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 63
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    sget v12, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_image_limit:I

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    add-int/2addr v11, v12

    sget v12, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_total_limit:I

    .line 67
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-gt v11, v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v6

    aput-object v1, v0, v7

    aput-object v8, v0, v9

    .line 68
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    move-object v9, v5

    .line 70
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shareQuoteWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11

    .line 149
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_quote_with_image_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 151
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

    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    return v1
.end method
