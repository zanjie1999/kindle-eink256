.class public Lcom/amazon/ea/ui/helper/PurchaseViewManager;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$MetricTrackingOnClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadSampleClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadNowClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$DownloadClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowAndDownloadListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseFailureMessageClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowFailureMessageClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;,
        Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;
    }
.end annotation


# static fields
.field private static final LINK_END:Ljava/lang/String; = "]]"

.field private static final LINK_START:Ljava/lang/String; = "[["

.field private static final MESSAGE_CENTER_URL_SUFFIX:Ljava/lang/String; = "/gp/message/"

.field private static final ONE_TAP_TOAST_COUNTDOWN_TICK:J = 0x3e8L

.field private static final ONE_TAP_TOAST_SUCCESS_MAX_DURATION:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.helper.PurchaseViewManager"


# instance fields
.field private actionMessageColor:I

.field private addToLib:Landroid/widget/Button;

.field private addToLibContainer:Landroid/view/View;

.field private asin:Ljava/lang/String;

.field private attachedToWindow:Z

.field private book:Lcom/amazon/ea/util/EABookShell;

.field private borrowRefTag:Ljava/lang/String;

.field private borrowViewKU:Landroid/widget/ImageView;

.field private borrowViewPR:Landroid/widget/ImageView;

.field private buyAsinRefTag:Ljava/lang/String;

.field private buyInStore:Z

.field private buySuccessAsset:Landroid/widget/ImageView;

.field private buySuccessToast:Landroid/widget/TextView;

.field private cancelAsset:Landroid/widget/ImageView;

.field private cancelButton:Landroid/widget/Button;

.field private cancelToast:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private currentBookCoverView:Landroid/view/View;

.field private errorMessageColor:I

.field private failureAsset:Landroid/widget/ImageView;

.field private failureView:Landroid/widget/Button;

.field private inYourLibAsset:Landroid/widget/ImageView;

.field private inYourLibText:Landroid/widget/TextView;

.field private includedWithMembershipTextView:Landroid/widget/TextView;

.field private metricsTag:Ljava/lang/String;

.field private oneClickBorrowSupported:Z

.field private purchaseButton:Landroid/widget/Button;

.field private final purchaseInfoListener:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

.field private purchaseStatusListener:Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;

.field private readButton:Landroid/widget/Button;

.field private rsContext:Ljava/lang/String;

.field private rsMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private seeInStoreButton:Landroid/widget/Button;

.field private seeInStoreChevron:Landroid/widget/ImageView;

.field private separatorBar:Landroid/view/View;

.field private statusMessageColor:I

.field private unBuyRefTag:Ljava/lang/String;

.field private widgetMetricsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;)V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/ui/helper/PurchaseViewManager$1;)V

    iput-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseInfoListener:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->statusMessageColor:I

    .line 141
    iput v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->actionMessageColor:I

    .line 144
    iput v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->errorMessageColor:I

    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    .line 204
    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/ui/helper/PurchaseViewManager$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 206
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null purchase button is required for initiating purchase calls."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1000(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/util/Map;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyAsinRefTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->book:Lcom/amazon/ea/util/EABookShell;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->currentBookCoverView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/ea/ui/helper/PurchaseViewManager;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setBuySuccessViewVisibility(I)V

    return-void
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowRefTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Landroid/widget/Button;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->announceForAccessibilityCancelSuccess()V

    return-void
.end method

.method static synthetic access$2600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->unBuyRefTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->registerListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->unregisterListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->isOneTapEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureViewForOneTap(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureLegacyView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseStatusListener:Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    return-object p0
.end method

.method private announceForAccessibilityCancelSuccess()V
    .locals 2

    .line 1116
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private configureBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 3

    .line 553
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isKUBook()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    .line 555
    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isPRBook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    .line 558
    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 560
    :cond_2
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private configureCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 583
    :cond_1
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 585
    iget-boolean v2, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 586
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 587
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_cancel_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 589
    :cond_2
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 590
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_unbuy_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 592
    :cond_3
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 596
    :cond_4
    iget-boolean v2, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    if-eqz v2, :cond_8

    .line 597
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 598
    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 599
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 601
    :cond_6
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 602
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_processing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 605
    :cond_7
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 610
    :cond_8
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    .line 579
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private configureFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 6

    .line 621
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_1

    goto :goto_3

    .line 631
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasFailure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    .line 635
    iget-object v1, v0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_2

    .line 637
    new-instance v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowFailureMessageClickListener;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowFailureMessageClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    goto :goto_0

    .line 641
    :cond_2
    new-instance v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseFailureMessageClickListener;

    iget-object v2, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseFailureMessageClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;)V

    .line 642
    iget-object v2, v0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v5, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v2, v5, :cond_3

    const/4 v1, 0x0

    .line 645
    invoke-direct {p0, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 646
    invoke-direct {p0, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v3, 0x8

    .line 649
    :goto_1
    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_2

    .line 651
    :cond_4
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->hideFailureView()V

    :goto_2
    return-void

    .line 627
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->hideFailureView()V

    return-void
.end method

.method private configureLegacyView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 3

    .line 448
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    sget-object v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuring purchase views [info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 451
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    const/16 v0, 0x8

    .line 452
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 453
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configurePurchaseButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object v0

    .line 454
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 456
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 457
    new-instance p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    invoke-direct {p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-object p1
.end method

.method private configureOneTapBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->includedWithMembershipTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 866
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 869
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isKUBook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 870
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 871
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isPRBook()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 872
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->includedWithMembershipTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 875
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private configureOneTapCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 888
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 893
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 896
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 901
    :cond_3
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 902
    sget-object v1, Lcom/amazon/ea/purchase/model/PurchaseState;->CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 903
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_processing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showOneTapCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    .line 907
    :cond_4
    iget-boolean v1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-eqz v1, :cond_5

    .line 908
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 909
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showOneTapCancelToast()V

    goto :goto_0

    .line 911
    :cond_5
    iget-boolean p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    if-eqz p1, :cond_7

    .line 912
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 913
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 914
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 915
    :cond_6
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_cancel_one_tap:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$UnBuyClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showOneTapCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private configureOneTapFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 7

    .line 928
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 932
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_1

    goto :goto_2

    .line 938
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasFailure()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 939
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    .line 942
    iget-object v3, v0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v4, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 944
    new-instance v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowFailureMessageClickListener;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowFailureMessageClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    goto :goto_0

    .line 948
    :cond_2
    new-instance v3, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseFailureMessageClickListener;

    iget-object v4, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v3, p0, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseFailureMessageClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;)V

    .line 949
    iget-object v4, v0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v6, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v4, v6, :cond_3

    .line 952
    invoke-direct {p0, v5}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 953
    invoke-direct {p0, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 956
    :goto_0
    iget-object v3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getOneTapErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showOneTapFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_1

    .line 957
    :cond_4
    iget-boolean v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 958
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_general_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showOneTapFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_1

    .line 960
    :cond_5
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->hideFailureView()V

    :goto_1
    return-void

    .line 934
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->hideFailureView()V

    return-void
.end method

.method private configureOneTapReadButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 5

    .line 786
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->readButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 789
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 791
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 792
    sget-object v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$1;->$SwitchMap$com$amazon$ea$purchase$model$PurchaseState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "ReadNowShown"

    const-string v2, "SampleShown"

    const-string v3, "OpenShown"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 834
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 836
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadSampleClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadSampleClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    :pswitch_1
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 849
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadNowClickListener;

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadNowClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/kindle/krx/content/ContentType;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 824
    :pswitch_3
    invoke-direct {p0, v4, v4, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 842
    :pswitch_4
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 813
    :pswitch_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 814
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 817
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 818
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 795
    :pswitch_6
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->isNonPurchasable(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v2, p0, p1, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;Z)V

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 799
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 800
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->useSidecarBorrowSetting()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->oneClickBorrowSupported:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 801
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;

    invoke-direct {v0, p0, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Z)V

    const-string v1, "BorrowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 804
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 806
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadSampleClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadSampleClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private configurePurchaseButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;
    .locals 6

    .line 468
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 475
    :cond_0
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 476
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 477
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/PurchaseActions;->NO_RENDER_NO_OFFER:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 481
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->asin:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyAsinRefTag:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 483
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->useSidecarBorrowSetting()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean v4, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->oneClickBorrowSupported:Z

    .line 485
    :cond_2
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_borrow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;

    invoke-direct {v0, p0, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Z)V

    const-string v1, "BorrowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_FOR_FREE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 489
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 490
    :cond_3
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 491
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadFreeSampleClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    const-string v1, "ReadFreeSampleShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 495
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->READ:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 496
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_buy_with_price:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v1, p0, p1, v3}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;Z)V

    const-string p1, "PriceShown"

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITH_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 501
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 503
    :cond_5
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_buy_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    const-string v1, "BuyNowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITHOUT_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 506
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 511
    :cond_6
    iget-boolean v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    if-eqz v2, :cond_7

    .line 512
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 517
    :cond_7
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 519
    iget p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->downloadPercentage:I

    if-nez p1, :cond_8

    .line 520
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_downloading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 522
    :cond_8
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_downloading_percent:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "DownloadingShown"

    .line 524
    invoke-direct {p0, p1, v5, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 525
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->DOWNLOAD:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 526
    :cond_9
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 527
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadNowClickListener;

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$ReadNowClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/kindle/krx/content/ContentType;)V

    const-string v1, "ReadNowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 529
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 530
    :cond_a
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 531
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_download:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$DownloadClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$DownloadClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    const-string v1, "DownloadShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 533
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->DOWNLOAD:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 534
    :cond_b
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->BORROWING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    .line 540
    :cond_c
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 541
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 535
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_processing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProcessingShown"

    invoke-direct {p0, p1, v5, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 537
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 470
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1
.end method

.method private configureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 1

    .line 432
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->isOneTapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureViewForOneTap(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p1

    return-object p1

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureLegacyView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p1

    return-object p1
.end method

.method private configureViewForOneTap(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 3

    .line 665
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    sget-object v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuring purchase views [info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 668
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    const/16 v0, 0x8

    .line 669
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 670
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureSaveToLibView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 671
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureOneTapPurchaseButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object v0

    .line 672
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureOneTapReadButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 673
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureOneTapBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 674
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureOneTapCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 675
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureOneTapFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 676
    new-instance p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    invoke-direct {p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-object p1
.end method

.method private emitShowFailureViewMetrics(Lcom/amazon/ea/purchase/model/FailRecord;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1211
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne v0, v1, :cond_0

    .line 1212
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->isOneTapEnabled()Z

    move-result p1

    const-string v0, "DisplayedBorrowFailureMessage"

    invoke-static {v0, p1}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1213
    iget-object p1, p1, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->PURCHASE:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne p1, v0, :cond_1

    .line 1214
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->isOneTapEnabled()Z

    move-result p1

    const-string v0, "DisplayedPurchaseFailureMessage"

    invoke-static {v0, p1}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 1219
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 1220
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private getActionMessageColor()I
    .locals 2

    .line 1285
    iget v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->actionMessageColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getErrorMessageColor()I
    .locals 2

    .line 1294
    iget v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->errorMessageColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getStatusMessageColor()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getStatusMessageColor()I
    .locals 2

    .line 1277
    iget v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->statusMessageColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$color;->endactions_amazon_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private hideFailureView()V
    .locals 2

    .line 1225
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1229
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initMetrics()V
    .locals 4

    .line 273
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->isOneTapEnabled()Z

    move-result v0

    const-string v1, "DisplayedPurchase"

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 276
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 277
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method private isNonPurchasable(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Z
    .locals 1

    .line 727
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    if-nez v0, :cond_1

    .line 730
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isOneTapEnabled()Z
    .locals 1

    .line 1868
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->readButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerListener()V
    .locals 3

    .line 1301
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1305
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    sget-object v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register price listener [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :cond_1
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseInfoListener:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    return-void
.end method

.method private setBuySuccessViewVisibility(I)V
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buySuccessToast:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buySuccessAsset:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1254
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buySuccessAsset:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 1257
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buySuccessToast:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setSeeInStoreVisibility(I)V
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->seeInStoreButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->seeInStoreChevron:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1243
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setSeparatorBarVisibility(I)V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->separatorBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1002
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    :cond_1
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1005
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1006
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "OneTapButtonState"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1068
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_1

    .line 1071
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getStatusMessageColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1073
    :cond_1
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getActionMessageColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1075
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1077
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "PuchaseButtonState"

    const-string v0, "UnbuyShown"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1140
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1143
    invoke-direct {p0, p4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->emitShowFailureViewMetrics(Lcom/amazon/ea/purchase/model/FailRecord;)V

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 1146
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getStatusMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1148
    :cond_1
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getActionMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1151
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 1152
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz p4, :cond_3

    .line 1156
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FailureShown"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    sget-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    iget-object p4, p4, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 1158
    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PuchaseButtonState"

    .line 1156
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private showInYourLib()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLibContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->inYourLibText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1018
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->inYourLibAsset:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private showOneTapCancelToast()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showOneTapCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1094
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getActionMessageColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1097
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1099
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "PuchaseButtonState"

    const-string v0, "UnbuyShown"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showOneTapFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1182
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-direct {p0, p4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->emitShowFailureViewMetrics(Lcom/amazon/ea/purchase/model/FailRecord;)V

    if-eqz p3, :cond_1

    .line 1188
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1192
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getErrorMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1194
    :cond_2
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->getActionMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1197
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 1198
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 1202
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FailureShown"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    sget-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    iget-object p4, p4, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 1204
    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PuchaseButtonState"

    .line 1202
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method private showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 978
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 979
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "PuchaseButtonState"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->readButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1046
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    :cond_1
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->readButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1049
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->readButton:Landroid/widget/Button;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1050
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->readButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "OneTapButtonState"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private unregisterListener()V
    .locals 3

    .line 1315
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1319
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1320
    sget-object v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister price listener [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_1
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseInfoListener:Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseInfoListener;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->unregisterListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    return-void
.end method


# virtual methods
.method public configureOneTapPurchaseButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;
    .locals 6

    .line 688
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->isNonPurchasable(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 695
    :cond_0
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 697
    sget-object v1, Lcom/amazon/ea/ui/helper/PurchaseViewManager$1;->$SwitchMap$com$amazon$ea$purchase$model$PurchaseState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "PriceShown"

    const-string v2, "BuyNowShown"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 723
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 714
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_processing:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 717
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 715
    :goto_0
    invoke-direct {p0, v0, v3, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 720
    :cond_4
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 700
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 701
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 702
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_buy_with_price:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v2, p0, p1, v4}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithPriceClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;Z)V

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 707
    :cond_6
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_buy_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$PurchaseWithoutPriceClickListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 711
    :cond_7
    :goto_1
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 692
    :cond_8
    :goto_2
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1
.end method

.method public configureSaveToLibView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 743
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->inYourLibText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->inYourLibAsset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLibContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 754
    :cond_2
    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 756
    sget-object v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$1;->$SwitchMap$com$amazon$ea$purchase$model$PurchaseState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "AddToLibShown"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 775
    :cond_3
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showInYourLib()V

    goto :goto_0

    .line 768
    :cond_4
    invoke-direct {p0, v2, v2, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_5
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_add_to_lib:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_6
    iget-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_add_to_lib:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowAndDownloadListener;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager$BorrowAndDownloadListener;-><init>(Lcom/amazon/ea/ui/helper/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/util/EABookShell;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->book:Lcom/amazon/ea/util/EABookShell;

    .line 237
    invoke-virtual {p1}, Lcom/amazon/ea/util/EABookShell;->getASIN()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    .line 238
    iput-boolean p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyInStore:Z

    .line 239
    iput-boolean p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->oneClickBorrowSupported:Z

    .line 240
    iput-object p4, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    .line 241
    iput-object p5, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    .line 242
    iput-object p7, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buyAsinRefTag:Ljava/lang/String;

    .line 243
    iput-object p8, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->unBuyRefTag:Ljava/lang/String;

    .line 244
    iput-object p9, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowRefTag:Ljava/lang/String;

    .line 245
    iput-object p10, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsContext:Ljava/lang/String;

    .line 246
    iput-object p11, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    .line 249
    iget-boolean p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->attachedToWindow:Z

    if-eqz p1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->registerListener()V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initMetrics()V

    .line 256
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2, p6}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/ea/purchase/PurchaseManager;->getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-result-object p1

    .line 259
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->configureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p1

    return-object p1
.end method

.method public initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/util/EABookShell;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;",
            ")",
            "Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;"
        }
    .end annotation

    .line 266
    iput-object p12, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->purchaseStatusListener:Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;

    .line 267
    invoke-virtual/range {p0 .. p11}, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setActionMessageColor(I)V
    .locals 0

    .line 420
    iput p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->actionMessageColor:I

    return-void
.end method

.method public setAddToLibContainer(Landroid/view/View;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLibContainer:Landroid/view/View;

    return-void
.end method

.method public setAddToLibViewSet(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    .line 293
    iput-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->inYourLibText:Landroid/widget/TextView;

    .line 294
    iput-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->inYourLibAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    .line 309
    iput-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    return-void
.end method

.method public setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    .line 322
    iput-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    .line 323
    iput-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->includedWithMembershipTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setBuySuccessView(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buySuccessToast:Landroid/widget/TextView;

    .line 361
    iput-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->buySuccessAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setCancelView(Landroid/widget/Button;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    return-void
.end method

.method public setCancelView(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    .line 354
    iput-object p2, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    .line 355
    iput-object p3, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setCurrentBookView(Landroid/view/View;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->currentBookCoverView:Landroid/view/View;

    return-void
.end method

.method public setErrorMessageColor(I)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->errorMessageColor:I

    return-void
.end method

.method public setFailureAsset(Landroid/widget/ImageView;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setFailureView(Landroid/widget/Button;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 370
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->failureView:Landroid/widget/Button;

    .line 371
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public setReadButton(Landroid/widget/Button;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->readButton:Landroid/widget/Button;

    return-void
.end method

.method public setSeeInStoreButton(Landroid/widget/Button;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->seeInStoreButton:Landroid/widget/Button;

    return-void
.end method

.method public setSeeInStoreChevron(Landroid/widget/ImageView;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->seeInStoreChevron:Landroid/widget/ImageView;

    return-void
.end method

.method public setSeparatorBar(Landroid/view/View;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->separatorBar:Landroid/view/View;

    return-void
.end method

.method public setStatusMessageColor(I)V
    .locals 0

    .line 412
    iput p1, p0, Lcom/amazon/ea/ui/helper/PurchaseViewManager;->statusMessageColor:I

    return-void
.end method
