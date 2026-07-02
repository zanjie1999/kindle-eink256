.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/WhatsappShareTargetGridItem;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.source "WhatsappShareTargetGridItem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/WhatsappShareTargetGridItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/WhatsappShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V

    return-void
.end method


# virtual methods
.method protected share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 94
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 95
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return v1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 3

    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 54
    invoke-static {p2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    iget-object v1, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->whatsappDescription:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p4, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getWhatsappDescription()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 58
    invoke-static {p2, p4}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p2

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 61
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->whatsapp_share_formatter:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-virtual {p2, p3}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/WhatsappShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 7

    .line 70
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 73
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->whatsapp_share_formatter:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v1

    invoke-static {p3, v1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 78
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->whatsapp_share_progress_book_done_formatter_a:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v1, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    .line 79
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 82
    :cond_0
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->whatsapp_share_progress_book_reading_formatter_a:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 84
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 83
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/WhatsappShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 4

    .line 40
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 43
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->whatsapp_share_quote_formatter_a:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->whatsapp_share_formatter:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/WhatsappShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
