.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;
.super Ljava/lang/Object;
.source "ItemClickListenerFactory.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ui.gridItem.ItemClickListenerFactory"

.field private static final LOG_FORMAT:Ljava/lang/String; = "%s: %s"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"

.field private static final instance:Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->instance:Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canShareImage(Ljava/lang/String;)Z
    .locals 1

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "SocialSharing"

    const-string v0, "The shareable image file doesn\'t exist, cannot complete share"

    .line 256
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->instance:Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;

    return-object v0
.end method

.method private reachedClippingLimit(Landroid/app/Activity;Lcom/amazon/kindle/krx/content/IBook;II)Z
    .locals 5

    .line 291
    invoke-static {p3}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    .line 292
    invoke-static {p4}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "SocialSharing"

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 294
    invoke-interface {p3, p4}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 303
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getClippingService()Lcom/amazon/kindle/krx/clipping/IKRXClippingService;

    move-result-object v4

    invoke-interface {v4, p2, p3, p4}, Lcom/amazon/kindle/krx/clipping/IKRXClippingService;->canUpdateClippingBalance(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Selection exceeds clipping limit"

    .line 305
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget p2, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_unable_to_share:I

    .line 308
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_clipping_limit_exceeded_message:I

    .line 309
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory$1;

    invoke-direct {p4, p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory$1;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;)V

    .line 307
    invoke-static {p2, p3, p4}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    move-result-object p2

    .line 316
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v2

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p3, p1, v0

    aput-object p4, p1, v2

    const-string p2, "Start position of selected text passes end position of selected text. Start: %s, End: %s"

    .line 295
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method protected buildShareContent(Landroid/os/Bundle;)Lcom/amazon/kindle/socialsharing/ShareContent;
    .locals 2

    .line 263
    new-instance v0, Lcom/amazon/kindle/socialsharing/ShareContent;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/ShareContent;-><init>()V

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_GENERIC_BACK_LINK"

    .line 265
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->genericBackLink:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_GENERIC_TITLE"

    .line 266
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->genericTitle:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_GENERIC_DESCRIPTION"

    .line 267
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->genericDescription:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_GENERIC_IMAGE_URL"

    .line 268
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->genericImageUrl:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_SMS_DESCRIPTION"

    .line 270
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->smsDescription:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_EMAIL_DESCRIPTION"

    .line 272
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->emailDescription:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_EMAIL_SUBJECT"

    .line 273
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->emailSubject:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_FACEBOOK_DESCRIPTION"

    .line 275
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->facebookDescription:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_FACEBOOK_TITLE"

    .line 276
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->facebookTitle:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_FACEBOOK_CAPTION"

    .line 277
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->facebookCaption:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_MESSENGER_DESCRIPTION"

    .line 279
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->messengerDescription:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_MESSENGER_TITLE"

    .line 280
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->messengerTitle:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_TWITTER_DESCRIPTION"

    .line 282
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->twitterDescription:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_WHATSAPP_DESCRPTION"

    .line 284
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/kindle/socialsharing/ShareContent;->whatsappDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected canShareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/socialsharing/ui/gridItem/BookNullException;
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 211
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getQuote()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getStartPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEndPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    const-string v2, "READER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getStartPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 221
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEndPosition()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 223
    invoke-static {p3}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canPerformQuoteShare(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 227
    :cond_0
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->reachedClippingLimit(Landroid/app/Activity;Lcom/amazon/kindle/krx/content/IBook;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 231
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 232
    sget-object p1, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-static {v0, p2, p1}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->selectText(IILcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1

    .line 208
    :cond_4
    new-instance p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/BookNullException;

    const-string p2, "Book must be in user library to allow sharing"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BookNullException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/socialsharing/ui/gridItem/BookNullException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;-><init>(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocialSharing"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p1, "ShareType in bundle extras cannot be empty"

    .line 54
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "UNKNOWN"

    .line 59
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->setEntryPoint(Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "ASIN in bundle extras cannot be empty"

    .line 63
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 67
    :cond_2
    new-instance v1, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/kindle/socialsharing/util/SocialSharingBook;-><init>(Ljava/lang/String;Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;)V

    .line 74
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UNVERIFIED_BOOK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FALKOR_STORY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 76
    invoke-static {v1}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->canShare(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v3

    .line 81
    :cond_3
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createItemClickListener(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Landroid/os/Bundle;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected createBookShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V
    .locals 7

    .line 193
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingServiceClient()Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getReftag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getOverrideLocation()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;->createBookShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createItemClickListener(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Landroid/os/Bundle;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/socialsharing/ui/gridItem/BookNullException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->buildShareContent(Landroid/os/Bundle;)Lcom/amazon/kindle/socialsharing/ShareContent;

    move-result-object p3

    .line 91
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUOTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->canShareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteOnItemClickListener;

    .line 94
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    .line 97
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p2, p4, v1, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createQuoteShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PROGRESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareProgressOnItemClickListener;

    .line 101
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareProgressOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    .line 104
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p2, p4, v1, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createProgressShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BOOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareBookOnItemClickListener;

    .line 107
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareBookOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    .line 109
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p4, v1, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createBookShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FALKOR_STORY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareFalkorBookOnItemClickListener;

    .line 112
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareFalkorBookOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    .line 114
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p4, v1, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createBookShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UNVERIFIED_BOOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareBookOnItemClickListener;

    .line 117
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareBookOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V

    .line 119
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p4, v1, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createBookShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BOOK_IMAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareableImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->canShareImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareableImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareBookWithImageOnItemClickListener;

    .line 124
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareBookWithImageOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/io/File;)V

    .line 128
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p2, p4, v1, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createBookShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QUOTE_IMAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->canShareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareableImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->canShareImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareableImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteWithImageOnItemClickListener;

    .line 135
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareQuoteWithImageOnItemClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;Ljava/io/File;)V

    .line 139
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEntryPoint()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p2, p4, v1, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->createQuoteShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 142
    sget-object p4, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->CLASS_TAG:Ljava/lang/String;

    aput-object p4, p1, p3

    const/4 p3, 0x1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid share type: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getShareType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "%s: %s"

    .line 142
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SocialSharing"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-object v1
.end method

.method protected createProgressShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingServiceClient()Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getReftag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p3, p1, p4}, Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;->createProgressShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createQuoteShare(Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;Ljava/lang/String;)V
    .locals 10

    .line 174
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingServiceClient()Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getStartPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 177
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getEndPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 179
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getQuote()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/util/ShareIntentInformation;->getReftag()Ljava/lang/String;

    move-result-object v8

    move-object v2, p2

    move-object v7, p3

    move-object v9, p4

    .line 179
    invoke-interface/range {v1 .. v9}, Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;->createQuoteShare(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
