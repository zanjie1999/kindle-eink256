.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/MessengerShareTargetGridItem;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.source "MessengerShareTargetGridItem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/MessengerShareTargetGridItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/MessengerShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V

    return-void
.end method


# virtual methods
.method protected share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 100
    new-instance v0, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;

    invoke-direct {v0, p1}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 101
    invoke-virtual {v0, p4}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;

    .line 102
    invoke-virtual {v0, p3}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;

    .line 103
    invoke-virtual {v0, p5}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;

    .line 104
    invoke-virtual {v0, p2}, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;->setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    check-cast v0, Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$Builder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object p2

    .line 105
    invoke-virtual {p2}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 9

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 51
    invoke-static {p2}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object p3

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 53
    iget-object v2, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->messengerDescription:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getMessengerDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    iget-object v2, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->messengerTitle:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->genericTitle:Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getMessengerTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    .line 55
    iget-object v6, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->genericBackLink:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getGenericBacklink()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/String;

    .line 56
    iget-object p4, p4, Lcom/amazon/kindle/socialsharing/ShareContent;->genericImageUrl:Ljava/lang/String;

    aput-object p4, v5, v3

    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getGenericImageUrl()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v4

    invoke-static {v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 58
    invoke-static {p2, p4}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual {p2, v2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-virtual {p2, p3}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    .line 65
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/socialsharing/ui/gridItem/MessengerShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 6

    .line 70
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v0

    invoke-static {p3, v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 74
    sget p3, Lcom/amazon/kindle/socialsharing/common/R$string;->messenger_linkshare_progress_done_description_formatter:I

    .line 75
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 74
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 78
    :cond_0
    sget p3, Lcom/amazon/kindle/socialsharing/common/R$string;->messenger_linkshare_progress_reading_description_formatter:I

    .line 79
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 81
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 78
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    .line 84
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/MessengerShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 9

    .line 39
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 41
    sget p3, Lcom/amazon/kindle/socialsharing/common/R$string;->messenger_linkshare_quote_share_description_formatter:I

    .line 42
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/socialsharing/ui/gridItem/MessengerShareTargetGridItem;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
