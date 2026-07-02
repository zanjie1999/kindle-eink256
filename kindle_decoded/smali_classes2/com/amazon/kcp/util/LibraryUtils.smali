.class public Lcom/amazon/kcp/util/LibraryUtils;
.super Ljava/lang/Object;
.source "LibraryUtils.java"


# static fields
.field public static final FILE_SIZE_FORMATTER:Ljava/text/DecimalFormat;

.field public static final FILE_SIZE_UNITS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    const-class v0, Lcom/amazon/kcp/util/LibraryUtils;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/LibraryUtils;->TAG:Ljava/lang/String;

    const-string v0, "B"

    const-string v1, "KB"

    const-string v2, "MB"

    const-string v3, "GB"

    const-string v4, "TB"

    .line 78
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/LibraryUtils;->FILE_SIZE_UNITS:[Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/LibraryUtils;->FILE_SIZE_FORMATTER:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendLocalContentStateDescription(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 436
    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result v0

    if-gez v0, :cond_0

    .line 437
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->new_book_label:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 439
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    invoke-static {p0, p2}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 443
    :cond_1
    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p2

    .line 444
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p2, v0, :cond_2

    .line 445
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_can_be_opened_still_downloading:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_2
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p2, v0, :cond_4

    .line 447
    invoke-interface {p3}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->isBookTransferring(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->transfer_book_accessibility_description:I

    goto :goto_0

    :cond_3
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_local:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 452
    :cond_4
    :goto_1
    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result p2

    if-ltz p2, :cond_5

    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-eq p2, v0, :cond_5

    .line 453
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_progress:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method private static appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, ", "

    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static copyLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 552
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static copyLinearLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 564
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private static createStateAndAudioBookContentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 423
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createSubscriptionTypeFromOrigin(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Ljava/lang/String;)Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;
    .locals 1

    .line 717
    invoke-interface {p0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasCUSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->isCUOriginType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    sget-object p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-object p0

    .line 719
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->isKindleUnlimitedOrPrimeOrigin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    sget-object p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->KINDLE_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-object p0

    .line 721
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasPrimeSubscription()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->isKindleUnlimitedOrPrimeOrigin(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 722
    sget-object p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->PRIME:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static deduplicateCollectionName(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/util/PronounceableName;
    .locals 2

    .line 539
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionNamesByUserId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 541
    new-instance v1, Lcom/amazon/kindle/collections/util/PronounceableName;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/collections/util/PronounceableName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance p0, Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;

    invoke-direct {p0}, Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/collections/util/NumericSuffixNameDedupeStrategy;->dedupe(Lcom/amazon/kindle/collections/util/PronounceableName;Ljava/util/Collection;)Lcom/amazon/kindle/collections/util/PronounceableName;

    move-result-object p0

    return-object p0
.end method

.method public static factory()Lcom/amazon/kcp/application/ILibraryFactory;
    .locals 1

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/LibraryFactorySingleton;->getFactory()Lcom/amazon/kcp/application/ILibraryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getCUBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 3

    .line 658
    sget v0, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_cu_filter_dark:I

    .line 659
    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_cu_filter_light:I

    .line 661
    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;)Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getCurrentLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    .line 131
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/kcp/util/LibraryUtils;->getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;Lcom/amazon/kindle/krx/library/LibraryView;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;Lcom/amazon/kindle/krx/library/LibraryView;)Ljava/lang/String;
    .locals 10

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 163
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v3, :cond_0

    .line 164
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsinCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/kcp/util/LibraryUtils;->getNarrativeContentDescription(Landroid/content/res/Resources;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    .line 168
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->getSeriesContentDescriptionWithSubscription(Lcom/amazon/kcp/library/ILibraryDisplayItem;)I

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 169
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsinCount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v5

    const/4 p3, 0x2

    .line 170
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/LibraryUtils;->getSubscriptionBadgeDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    .line 168
    invoke-virtual {v2, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p3, v3, :cond_2

    .line 180
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v3

    .line 181
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-static {v3, v6, v5, v2}, Lcom/amazon/kcp/util/LibraryUtils;->getSeriesGroupPrefixAndItemNumber(Lcom/amazon/kcp/library/models/SeriesGroupType;Ljava/lang/String;ZLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 183
    invoke-static {v0, v3}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->shouldAddBookCountWithPrefixForScreenReader(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->kre_library_series_book_number_prefix:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v0, v3}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 195
    :cond_3
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v3, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v3

    if-nez v3, :cond_4

    .line 196
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 198
    :cond_4
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/amazon/kcp/util/LibraryUtils;->getSubscriptionBadgeDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 199
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isPeriodical()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 204
    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq p3, v3, :cond_5

    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq p3, v3, :cond_5

    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryView;->BACK_ISSUES:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p3, v3, :cond_7

    :cond_5
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getPublicationDateInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_7

    .line 205
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v3, :cond_6

    .line 206
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getPublicationDateInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amazon/kcp/cover/NewspaperDateDecorator;->reformatDate(J)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v0, v3}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 210
    :cond_6
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v3, :cond_7

    .line 213
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/android/util/UIUtils;->formatShortPublicationDate(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 222
    :cond_7
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq p3, v1, :cond_8

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->DOWNLOADED_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq p3, v1, :cond_8

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p3, v1, :cond_9

    .line 223
    :cond_8
    sget p3, Lcom/amazon/kindle/librarymodule/R$string;->speak_periodical_has_back_issues:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 224
    invoke-static {v0, p3}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 229
    :cond_9
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_a

    .line 232
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v1

    :cond_a
    if-eqz v1, :cond_b

    .line 235
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->toKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 237
    invoke-interface {v1, p3}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getContentDescription(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_b
    const-string p3, ""

    :goto_0
    if-nez p1, :cond_10

    .line 242
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result p1

    if-nez p1, :cond_10

    .line 243
    sget-object p1, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    .line 277
    sget-object p1, Lcom/amazon/kcp/util/LibraryUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Detected invalid state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 272
    :pswitch_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->speak_download_again:I

    .line 273
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p3, p1}, Lcom/amazon/kcp/util/LibraryUtils;->createStateAndAudioBookContentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :pswitch_1
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_paused:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :pswitch_2
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_downloading:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    .line 264
    invoke-interface {p2}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->isIndeterminate()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-interface {p2}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->getProgress()I

    move-result p1

    if-lez p1, :cond_c

    .line 265
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->download_percentage:I

    new-array p3, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->getProgress()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v4

    invoke-virtual {v2, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :pswitch_3
    invoke-static {v0, v2, p3, p0}, Lcom/amazon/kcp/util/LibraryUtils;->appendLocalContentStateDescription(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_1

    .line 256
    :pswitch_4
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_queued:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :pswitch_5
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_remote:I

    .line 252
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p3, p1}, Lcom/amazon/kcp/util/LibraryUtils;->createStateAndAudioBookContentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :pswitch_6
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->download_failed:I

    .line 247
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {p3, p1}, Lcom/amazon/kcp/util/LibraryUtils;->createStateAndAudioBookContentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->appendWithComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_c
    :goto_1
    const-string p1, ", "

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 282
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne p2, p3, :cond_d

    .line 283
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_trial:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_e

    .line 285
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Rental"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 286
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_rental:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 287
    :cond_e
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne p1, p2, :cond_f

    .line 288
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->read_for_accessibility:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 289
    :cond_f
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isSample()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 290
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_book_sample:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_10
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContentIds(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 480
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 481
    invoke-interface {v1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getContentType(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 489
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 507
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 505
    :pswitch_0
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->OFFICE:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 503
    :pswitch_1
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 501
    :pswitch_2
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 499
    :pswitch_3
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->PDOC:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 497
    :pswitch_4
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 495
    :pswitch_5
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 493
    :pswitch_6
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    .line 491
    :pswitch_7
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->AUDIBLE:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getKUBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 5

    .line 634
    sget v0, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_ku_filter_dark:I

    .line 635
    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_ku_filter_light:I

    .line 636
    sget-object v2, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$application$Marketplace:[I

    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 642
    sget-object v2, Lcom/amazon/kcp/util/LibraryUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid marketplace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_ku_filter_dark_fr:I

    .line 639
    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_ku_filter_light_fr:I

    .line 645
    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public static getLocalContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/String;
    .locals 3

    .line 151
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/amazon/kcp/util/LibraryUtils;->getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;Lcom/amazon/kindle/krx/library/LibraryView;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizedSubscriptionBadgeDescriptionId(ZZ)I
    .locals 1

    .line 602
    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/util/LibraryUtils;->getSubscriptionBadgeDescriptionId(ZZLcom/amazon/kcp/application/Marketplace;)I

    move-result p0

    return p0
.end method

.method private static getMarketPlace()Lcom/amazon/kcp/application/Marketplace;
    .locals 2

    .line 683
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 684
    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    .line 683
    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    return-object v0
.end method

.method private static getNarrativeContentDescription(Landroid/content/res/Resources;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 794
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->narrative_series_count:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredOriginTypeForNarrative(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 395
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 396
    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->isCUOriginType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    return-object v0
.end method

.method public static getPrimeBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 3

    .line 650
    sget v0, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_prime_filter_dark:I

    .line 651
    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_prime_filter_light:I

    .line 653
    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static getReadableFileSize(J)Ljava/lang/String;
    .locals 7

    const-string v0, "0"

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    long-to-double p0, p0

    .line 467
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 468
    sget-object v2, Lcom/amazon/kcp/util/LibraryUtils;->FILE_SIZE_UNITS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kcp/util/LibraryUtils;->FILE_SIZE_FORMATTER:Ljava/text/DecimalFormat;

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr p0, v3

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/amazon/kcp/util/LibraryUtils;->FILE_SIZE_UNITS:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method static getSeriesContentDescriptionWithSubscription(Lcom/amazon/kcp/library/ILibraryDisplayItem;)I
    .locals 2

    .line 309
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p0, 0x2

    if-eq v0, p0, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    .line 327
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_series_content_description_with_subscription:I

    return p0

    .line 325
    :cond_0
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_series_content_description_with_subscription:I

    return p0

    .line 323
    :cond_1
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_series_content_description_with_subscription_omnibuses:I

    return p0

    .line 317
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->isInJapan()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 318
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_series_content_description_with_subscription_issues_jp:I

    return p0

    .line 320
    :cond_3
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_series_content_description_with_subscription_issues:I

    return p0

    .line 311
    :cond_4
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->isFalkorGroup(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 312
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_series_content_description_with_subscription_trades_falkor:I

    return p0

    .line 314
    :cond_5
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->speak_series_content_description_with_subscription_trades:I

    return p0
.end method

.method public static getSeriesGroupPrefixAndItemNumber(Lcom/amazon/kcp/library/models/SeriesGroupType;Ljava/lang/String;ZLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .line 363
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 364
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 374
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->omnibus_group_prefix_screen_reader:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 375
    invoke-virtual {p3, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->omnibus_group_prefix:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 376
    invoke-virtual {p3, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 366
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->issue_group_prefix_screen_reader:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 367
    invoke-virtual {p3, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->issue_group_prefix:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 368
    invoke-virtual {p3, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 370
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->volume_group_prefix_screen_reader:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 371
    invoke-virtual {p3, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->volume_group_prefix:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 372
    invoke-virtual {p3, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_6
    :goto_3
    const-string p0, ""

    return-object p0
.end method

.method private static getSubscriptionBadgeDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 415
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowSubscriptionBadge(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->isCUOriginType(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/amazon/kcp/util/LibraryUtils;->getLocalizedSubscriptionBadgeDescriptionId(ZZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static getSubscriptionBadgeDescriptionId(ZZLcom/amazon/kcp/application/Marketplace;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 608
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->comixology_unlimited:I

    return p0

    :cond_0
    if-eqz p0, :cond_4

    .line 610
    sget-object p0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$application$Marketplace:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    .line 618
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited:I

    return p0

    .line 616
    :cond_1
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited_ja:I

    return p0

    .line 614
    :cond_2
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited_fr:I

    return p0

    .line 612
    :cond_3
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited_cn:I

    return p0

    .line 621
    :cond_4
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->prime_reading:I

    return p0
.end method

.method public static hasContent(Landroid/view/ViewGroup;)Z
    .locals 7

    .line 665
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 667
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 668
    instance-of v4, v3, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 669
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 670
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    return v5

    .line 673
    :cond_0
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 674
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isCUOriginType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "ComicsUnlimited"

    .line 594
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->isConsolidated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 96
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 97
    :goto_1
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v2, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method private static isFalkorGroup(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 0

    .line 732
    invoke-interface {p0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/utils/GroupContentHelper;->isFalkorGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isKUOriginType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "KindleUnlimited"

    .line 584
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Kindle Unlimited"

    .line 585
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KUSubscription"

    .line 586
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isKindleUnlimitedOrPrimeOrigin(Ljava/lang/String;)Z
    .locals 1

    .line 728
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPrimeOriginType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Prime"

    .line 590
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSearchAndOrderedSeries(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z
    .locals 1

    .line 763
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->SEARCH:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 764
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 765
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFromOrderedSeries()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSeriesDetailAndOrderedSeries(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z
    .locals 1

    .line 704
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 705
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 706
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFromOrderedSeries()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lookupMetadata(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 529
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 533
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 534
    invoke-interface {p0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static setFrameLayoutParams(Landroid/view/View;II)V
    .locals 1

    .line 576
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryUtils;->copyLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 577
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 578
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 579
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static shouldAddBookCountWithPrefixForScreenReader(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 2

    .line 299
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFromOrderedSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupItemPosition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isComic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFalkor()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldShowBookCountWithPrefix(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z
    .locals 2

    .line 695
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->isSeriesDetailAndOrderedSeries(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isComic()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFalkor()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static shouldShowBookCountWithPrefixForSearch(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z
    .locals 2

    .line 756
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lcom/amazon/kcp/util/LibraryUtils;->getMarketPlace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/LibraryUtils;->isSearchAndOrderedSeries(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isComic()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isFalkor()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static shouldShowDeepStack(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeSource;Z)Z
    .locals 2

    .line 743
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 744
    sget-object v1, Lcom/amazon/kcp/cover/badge/BadgeSource;->LIBRARY:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 745
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 746
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/utils/GroupContentHelper;->isFalkorGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldShowInLibrary(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldShowPhoneticEntry()Z
    .locals 2

    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shouldShowSubscriptionBadge(Ljava/lang/String;)Z
    .locals 2

    .line 625
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 627
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/LibraryUtils;->createSubscriptionTypeFromOrigin(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Ljava/lang/String;)Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static startActivityWithSharedElementTransition(Landroid/view/View;Landroid/app/Activity;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 778
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 779
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p4, 0xd

    invoke-virtual {p2, p4}, Landroid/view/Window;->addFlags(I)V

    const-string p2, "activity_transition_with_animation"

    .line 780
    invoke-virtual {p0, p2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 781
    invoke-static {p1, p0, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 783
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 784
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 786
    :cond_0
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 789
    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
