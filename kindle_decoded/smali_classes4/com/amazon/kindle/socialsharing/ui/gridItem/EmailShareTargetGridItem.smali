.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.source "EmailShareTargetGridItem.java"


# static fields
.field private static final EMAIL_INTENT_TYPE:Ljava/lang/String; = "message/rfc822"

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V

    return-void
.end method

.method private initializeEmailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 177
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getBaseEmailIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 179
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    const-string v2, "android.intent.extra.TEXT"

    if-ne p1, v1, :cond_0

    const-string p1, "\n"

    const-string v1, "<br>"

    .line 184
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected getBookShareableBody(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;
    .locals 4

    .line 230
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 231
    iget-object v2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->emailDescription:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getEmailDescription()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 233
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 234
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getBookShareableSubject(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;
    .locals 4

    .line 207
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 208
    iget-object v2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->emailSubject:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericTitle:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getEmailSubject()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 210
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFalkorBookShareableBody(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 238
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 239
    iget-object v2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->emailDescription:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getFalkorShareEmailDescription()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 242
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFalkorBookShareableSubject(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 216
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 217
    iget-object v2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->emailSubject:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p2, p2, Lcom/amazon/kindle/socialsharing/ShareContent;->genericTitle:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getFalkorShareEmailSubject()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getHighestPriorityNotEmptyString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-static {p1, p3}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->create(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;

    move-result-object p1

    .line 220
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/util/PlaceholderUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getMetricName()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMetricName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1
.end method

.method protected share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 147
    invoke-virtual {p0, p2, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 149
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->initializeEmailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 152
    sget p4, Lcom/amazon/kindle/socialsharing/common/R$string;->email_chooser_dialog_title:I

    .line 153
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-static {p3, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 73
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->getBookShareableBody(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p0, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->getBookShareableSubject(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareBookWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 7

    .line 117
    invoke-virtual {p0, p2, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->getBookShareableBody(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {p0, p2, p5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->getBookShareableSubject(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 120
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public shareFalkorBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 6

    .line 81
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFalkorStoryDetailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    invoke-virtual {p0, p2, p4, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->getFalkorBookShareableBody(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p0, p2, p4, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->getFalkorBookShareableSubject(Lcom/amazon/kindle/socialsharing/service/Share;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareFalkorQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 14

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->falkor_book_email_share_quote_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->falkor_book_email_share_quote_subject_formatter_a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/InternalShareStringsUtil;->getFalkorDetailPageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-array v1, v7, [Ljava/lang/Object;

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 160
    invoke-virtual {p0, p2, p6}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 162
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getAuthority()Ljava/lang/String;

    move-result-object p6

    invoke-static {p1, p6, p5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p5

    .line 164
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->initializeEmailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.intent.action.SEND"

    .line 165
    invoke-virtual {p3, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "message/rfc822"

    .line 166
    invoke-virtual {p3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p4, 0x80001

    .line 168
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p4, "android.intent.extra.STREAM"

    .line 169
    invoke-virtual {p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    sget p4, Lcom/amazon/kindle/socialsharing/common/R$string;->email_chooser_dialog_title:I

    .line 172
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-static {p3, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 12

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_progress_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isEndOfBook(Landroid/content/res/Resources;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 97
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_progress_book_done:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    sget v5, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_progress_try_app_book_done:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    sget v6, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_progress_subject_formatter_book_done_a:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 99
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_progress_reading:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    .line 103
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 102
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    sget v5, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_progress_try_app_reading:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    sget v6, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_progress_subject_formatter_reading_a:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 105
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 108
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v5, v0, v2

    const/4 v2, 0x4

    .line 109
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFreeAppLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    aput-object v3, v0, v2

    .line 108
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v11, p3

    .line 111
    invoke-virtual/range {v6 .. v11}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 13

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_quote_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_quote_subject_formatter_a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAuthorsString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 56
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getFreeAppLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v2, v6

    .line 55
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-array v1, v5, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->share(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shareQuoteWithImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/io/File;Ljava/lang/String;)Z
    .locals 13

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_quote_with_image_body_formatter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    sget v2, Lcom/amazon/kindle/socialsharing/common/R$string;->email_share_quote_with_image_subject_formatter:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 130
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v0, v2, [Ljava/lang/Object;

    .line 131
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 133
    invoke-virtual/range {v6 .. v12}, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;->shareImage(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    return v2
.end method
