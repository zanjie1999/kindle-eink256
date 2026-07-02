.class public Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;
.super Ljava/lang/Object;
.source "InternalShareStringsUtil.java"


# instance fields
.field private authors:Ljava/lang/String;

.field private backLink:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->imageUrl:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->description:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->authors:Ljava/lang/String;

    return-void
.end method

.method public static create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/service/Share;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v5

    .line 54
    new-instance p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFalkorDetailPageUrl()Ljava/lang/String;
    .locals 2

    .line 61
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getStoryAsinForFalkorEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTwitterShareDescription(Ljava/lang/String;Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2

    .line 222
    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    .line 224
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 223
    invoke-static {v0, p3, p1}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->authors:Ljava/lang/String;

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_book_author:I

    .line 226
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 225
    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    const/4 p3, 0x1

    aput-object p1, p4, p3

    .line 228
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    const/4 p3, 0x2

    aput-object p1, p4, p3

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getEmailDescription()Ljava/lang/String;
    .locals 4

    .line 108
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_book_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->authors:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 111
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFreeAppLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 110
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailSubject()Ljava/lang/String;
    .locals 4

    .line 129
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_book_subject_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacebookCaption()Ljava/lang/String;
    .locals 4

    .line 165
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_linkshare_caption:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->authors:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacebookDescription()Ljava/lang/String;
    .locals 4

    .line 147
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->facebook_linkshare_recommend_description_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->description:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacebookTitle()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getFalkorShareEmailDescription()Ljava/lang/String;
    .locals 4

    .line 118
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_falkor_book_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->authors:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 121
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFreeAppLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 120
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFalkorShareEmailSubject()Ljava/lang/String;
    .locals 4

    .line 138
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_falkor_book_subject_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFalkorShareTwitterDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 206
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_falkor_book_book_title:I

    .line 208
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_falkor_book_formatter_a:I

    .line 209
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getTwitterShareDescription(Ljava/lang/String;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGenericBacklink()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericDescription()Ljava/lang/String;
    .locals 4

    .line 79
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->share_book_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->authors:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenericImageUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessengerDescription()Ljava/lang/String;
    .locals 4

    .line 175
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->messenger_linkshare_recommend_description_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->description:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessengerTitle()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsDescription()Ljava/lang/String;
    .locals 4

    .line 98
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->sms_share_book_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTwitterDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 194
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$integer;->word_limit_twitter_share_book_book_title:I

    .line 196
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->twitter_share_book_formatter_a:I

    .line 197
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getTwitterShareDescription(Ljava/lang/String;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWhatsappDescription()Ljava/lang/String;
    .locals 4

    .line 236
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->whatsapp_share_book_formatter_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->authors:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->backLink:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
