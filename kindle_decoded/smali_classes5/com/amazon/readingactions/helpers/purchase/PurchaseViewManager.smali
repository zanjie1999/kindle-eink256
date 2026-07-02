.class public Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;
.super Ljava/lang/Object;
.source "PurchaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$MetricTrackingOnClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$UnBuyClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadFreeSampleClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadNowClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$DownloadClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseFailureMessageClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowFailureMessageClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithoutPriceClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;,
        Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;
    }
.end annotation


# static fields
.field private static final LINK_END:Ljava/lang/String; = "]]"

.field private static final LINK_START:Ljava/lang/String; = "[["

.field private static final MESSAGE_CENTER_URL_SUFFIX:Ljava/lang/String; = "/gp/message/"

.field private static final ONE_TAP_TOAST_COUNTDOWN_TICK:J = 0x3e8L

.field private static final ONE_TAP_TOAST_SUCCESS_MAX_DURATION:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.helpers.purchase.PurchaseViewManager"


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

.field private final purchaseInfoListener:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;

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
    .locals 1

    .line 194
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;-><init>(Landroid/widget/Button;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$1;)V

    iput-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseInfoListener:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->statusMessageColor:I

    .line 136
    iput v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->actionMessageColor:I

    .line 139
    iput v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->errorMessageColor:I

    if-eqz p1, :cond_2

    .line 201
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    .line 203
    new-instance p2, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;

    invoke-direct {p2, p0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseButtonOnAttachStateChangeListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 204
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    goto :goto_0

    .line 205
    :cond_0
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->READ:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 206
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

    .line 207
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unaccepted purchase modes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null button is required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1000(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyAsinRefTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Lcom/amazon/ea/util/EABookShell;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->book:Lcom/amazon/ea/util/EABookShell;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->currentBookCoverView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setBuySuccessViewVisibility(I)V

    return-void
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowRefTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Landroid/widget/Button;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->announceForAccessibilityCancelSuccess()V

    return-void
.end method

.method static synthetic access$2600(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->unBuyRefTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->registerListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->unregisterListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->isOneTapEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureViewForOneTap(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureLegacyView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseStatusListener:Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    return-object p0
.end method

.method private announceForAccessibilityCancelSuccess()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private configureBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 563
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isKUBook()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    .line 565
    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isPRBook()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    .line 568
    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 570
    :cond_3
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private configureCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 593
    :cond_1
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 595
    iget-boolean v2, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 596
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 597
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_cancel_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 599
    :cond_2
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 600
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_unbuy_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 602
    :cond_3
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 606
    :cond_4
    iget-boolean v2, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    if-eqz v2, :cond_8

    .line 607
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 608
    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 609
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$UnBuyClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$UnBuyClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 611
    :cond_6
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 612
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_processing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 615
    :cond_7
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 620
    :cond_8
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    .line 589
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private configureFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 6

    .line 631
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_1

    goto :goto_3

    .line 641
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasFailure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 642
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    .line 645
    iget-object v1, v0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_2

    .line 647
    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowFailureMessageClickListener;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowFailureMessageClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    goto :goto_0

    .line 651
    :cond_2
    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseFailureMessageClickListener;

    iget-object v2, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v1, p0, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseFailureMessageClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;)V

    .line 652
    iget-object v2, v0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v5, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v2, v5, :cond_3

    const/4 v1, 0x0

    .line 655
    invoke-direct {p0, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 656
    invoke-direct {p0, v4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v3, 0x8

    .line 659
    :goto_1
    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_2

    .line 661
    :cond_4
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->hideFailureView()V

    :goto_2
    return-void

    .line 637
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->hideFailureView()V

    return-void
.end method

.method private configureLegacyView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 3

    .line 452
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->TAG:Ljava/lang/String;

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

    .line 455
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    const/16 v0, 0x8

    .line 456
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 457
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configurePurchaseButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object v0

    .line 458
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 459
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 461
    new-instance p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    invoke-direct {p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-object p1
.end method

.method private configureOneTapBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    .line 876
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->includedWithMembershipTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 884
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isKUBook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 885
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 886
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isPRBook()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 887
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->includedWithMembershipTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 890
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private configureOneTapCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 903
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 905
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 908
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 916
    :cond_3
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 917
    sget-object v1, Lcom/amazon/ea/purchase/model/PurchaseState;->CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 918
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_processing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showOneTapCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    .line 922
    :cond_4
    iget-boolean v1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-eqz v1, :cond_5

    .line 923
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 924
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showOneTapCancelToast()V

    goto :goto_0

    .line 926
    :cond_5
    iget-boolean p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    if-eqz p1, :cond_7

    .line 927
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 928
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 929
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 930
    :cond_6
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_cancel_one_tap:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$UnBuyClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$UnBuyClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showOneTapCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private configureOneTapFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 7

    .line 943
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 947
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    if-eqz v0, :cond_1

    goto :goto_2

    .line 953
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasFailure()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 954
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    .line 957
    iget-object v3, v0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v4, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 959
    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowFailureMessageClickListener;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowFailureMessageClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    goto :goto_0

    .line 963
    :cond_2
    new-instance v3, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseFailureMessageClickListener;

    iget-object v4, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v3, p0, v4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseFailureMessageClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;)V

    .line 964
    iget-object v4, v0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v6, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v4, v6, :cond_3

    .line 967
    invoke-direct {p0, v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 968
    invoke-direct {p0, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 971
    :goto_0
    iget-object v3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getOneTapErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showOneTapFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_1

    .line 972
    :cond_4
    iget-boolean v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 973
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_general_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showOneTapFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_1

    .line 975
    :cond_5
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->hideFailureView()V

    :goto_1
    return-void

    .line 949
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->hideFailureView()V

    return-void
.end method

.method private configureOneTapReadButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 5

    .line 798
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 801
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 803
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 804
    sget-object v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$1;->$SwitchMap$com$amazon$ea$purchase$model$PurchaseState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "ReadNowShown"

    const-string v2, "SampleShown"

    const-string v3, "OpenShown"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 846
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 848
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 841
    :pswitch_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 861
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadNowClickListener;

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-direct {v0, p0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadNowClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/kindle/krx/content/ContentType;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 836
    :pswitch_3
    invoke-direct {p0, v4, v4, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 854
    :pswitch_4
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 825
    :pswitch_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 830
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 807
    :pswitch_6
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->isNonPurchasable(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v2, p0, p1, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;Z)V

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 811
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 812
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->useSidecarBorrowSetting()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->oneClickBorrowSupported:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 813
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowClickListener;

    invoke-direct {v0, p0, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Z)V

    const-string v1, "BorrowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 816
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 818
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadSampleClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

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

    .line 472
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 473
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 475
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 482
    :cond_1
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 483
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 484
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/PurchaseActions;->NO_RENDER_NO_OFFER:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 488
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->asin:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyAsinRefTag:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 490
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->useSidecarBorrowSetting()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean v4, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->oneClickBorrowSupported:Z

    .line 492
    :cond_3
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_borrow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowClickListener;

    invoke-direct {v0, p0, v4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Z)V

    const-string v1, "BorrowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 495
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_FOR_FREE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 496
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 497
    :cond_4
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 498
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_read_samples:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadFreeSampleClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadFreeSampleClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    const-string v1, "ReadFreeSampleShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_READ_FREE_SAMPLE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 502
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->READ:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 503
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 504
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_buy_with_price:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v1, p0, p1, v3}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;Z)V

    const-string p1, "PriceShown"

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITH_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 508
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 510
    :cond_6
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_buy_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithoutPriceClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithoutPriceClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    const-string v1, "BuyNowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/PurchaseActions;->RENDER_WITHOUT_PRICE:Lcom/amazon/ea/metrics/PurchaseActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 513
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 518
    :cond_7
    iget-boolean v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    if-eqz v2, :cond_8

    .line 519
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 524
    :cond_8
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    .line 526
    iget p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->downloadPercentage:I

    if-nez p1, :cond_9

    .line 527
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_downloading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 529
    :cond_9
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_downloading_percent:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "DownloadingShown"

    .line 531
    invoke-direct {p0, p1, v5, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 532
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->DOWNLOAD:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 533
    :cond_a
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 534
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_read_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadNowClickListener;

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-direct {v0, p0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$ReadNowClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/kindle/krx/content/ContentType;)V

    const-string v1, "ReadNowShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 536
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 537
    :cond_b
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 538
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_download:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$DownloadClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$DownloadClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    const-string v1, "DownloadShown"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 540
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->DOWNLOAD:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 541
    :cond_c
    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/amazon/ea/purchase/model/PurchaseState;->BORROWING:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_1

    .line 547
    :cond_d
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 548
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 542
    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_processing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProcessingShown"

    invoke-direct {p0, p1, v5, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 544
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 477
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 478
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1
.end method

.method private configureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->isOneTapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureViewForOneTap(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p1

    return-object p1

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureLegacyView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p1

    return-object p1
.end method

.method private configureViewForOneTap(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;
    .locals 3

    .line 675
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->TAG:Ljava/lang/String;

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

    .line 678
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeeInStoreVisibility(I)V

    const/16 v0, 0x8

    .line 679
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->setSeparatorBarVisibility(I)V

    .line 680
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureSaveToLibView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 681
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureOneTapPurchaseButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object v0

    .line 682
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureOneTapReadButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 683
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureOneTapBorrowView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 684
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureOneTapCancelView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureOneTapFailureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    .line 686
    new-instance p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    invoke-direct {p1, v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;)V

    return-object p1
.end method

.method private emitShowFailureViewMetrics(Lcom/amazon/ea/purchase/model/FailRecord;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1226
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne v0, v1, :cond_0

    .line 1227
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->isOneTapEnabled()Z

    move-result p1

    const-string v0, "DisplayedBorrowFailureMessage"

    invoke-static {v0, p1}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1228
    iget-object p1, p1, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->PURCHASE:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne p1, v0, :cond_1

    .line 1229
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->isOneTapEnabled()Z

    move-result p1

    const-string v0, "DisplayedPurchaseFailureMessage"

    invoke-static {v0, p1}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 1234
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 1235
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private getActionMessageColor()I
    .locals 2

    .line 1300
    iget v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->actionMessageColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

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

    .line 1309
    iget v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->errorMessageColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getStatusMessageColor()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getStatusMessageColor()I
    .locals 2

    .line 1292
    iget v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->statusMessageColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

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

    .line 1240
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initMetrics()V
    .locals 4

    .line 277
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->isOneTapEnabled()Z

    move-result v0

    const-string v1, "DisplayedPurchase"

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 280
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 281
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method private isNonPurchasable(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Z
    .locals 1

    .line 740
    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->BUY_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v0}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    if-nez v0, :cond_1

    .line 743
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
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

    .line 1874
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

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

    .line 1316
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1320
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register price listener [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_1
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseInfoListener:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    return-void
.end method

.method private setBuySuccessViewVisibility(I)V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buySuccessToast:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buySuccessAsset:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1269
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1270
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buySuccessAsset:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 1272
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buySuccessToast:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setSeeInStoreVisibility(I)V
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->seeInStoreButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->seeInStoreChevron:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1258
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setSeparatorBarVisibility(I)V
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->separatorBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1017
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1020
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1021
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "OneTapButtonState"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1083
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_1

    .line 1086
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getStatusMessageColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1088
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getActionMessageColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1090
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1092
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "PuchaseButtonState"

    const-string v0, "UnbuyShown"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V
    .locals 2

    .line 1152
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1155
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1158
    invoke-direct {p0, p4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->emitShowFailureViewMetrics(Lcom/amazon/ea/purchase/model/FailRecord;)V

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 1161
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getStatusMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getActionMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1166
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 1167
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz p4, :cond_3

    .line 1171
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FailureShown"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    sget-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    iget-object p4, p4, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 1173
    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PuchaseButtonState"

    .line 1171
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private showInYourLib()V
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLibContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->inYourLibText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->inYourLibAsset:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1037
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private showOneTapCancelToast()V
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showOneTapCancelView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1109
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getActionMessageColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1112
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1114
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "PuchaseButtonState"

    const-string v0, "UnbuyShown"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showOneTapFailureView(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Lcom/amazon/ea/purchase/model/FailRecord;)V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1197
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-direct {p0, p4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->emitShowFailureViewMetrics(Lcom/amazon/ea/purchase/model/FailRecord;)V

    if-eqz p3, :cond_1

    .line 1203
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1207
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getErrorMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1209
    :cond_2
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->getActionMessageColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1212
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 1213
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 1217
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FailureShown"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    sget-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    iget-object p4, p4, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 1219
    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PuchaseButtonState"

    .line 1217
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method private showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 992
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 993
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 994
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "PuchaseButtonState"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showReadButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1061
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1064
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1065
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    const-string p2, "OneTapButtonState"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private unregisterListener()V
    .locals 3

    .line 1330
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1334
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister price listener [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_1
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseInfoListener:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseInfoListener;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->unregisterListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    return-void
.end method


# virtual methods
.method public configureOneTapPurchaseButton(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;
    .locals 6

    .line 698
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 699
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    :cond_0
    const/16 v1, 0x8

    .line 701
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 704
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->isNonPurchasable(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 708
    :cond_1
    iget-object v0, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 710
    sget-object v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$1;->$SwitchMap$com$amazon$ea$purchase$model$PurchaseState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "PriceShown"

    const-string v2, "BuyNowShown"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 736
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 727
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_processing:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 730
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 728
    :goto_0
    invoke-direct {p0, v0, v3, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 733
    :cond_5
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 713
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 714
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->priceNotZero()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 715
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_buy_with_price:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v2, p0, p1, v4}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithPriceClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;Lcom/amazon/ea/purchase/model/BookOffer;Z)V

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_7
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_buy_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithoutPriceClickListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$PurchaseWithoutPriceClickListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showPurchaseButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 724
    :cond_8
    :goto_1
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->PURCHASE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1

    .line 705
    :cond_9
    :goto_2
    sget-object p1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->NONE:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    return-object p1
.end method

.method public configureSaveToLibView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 756
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->inYourLibText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->inYourLibAsset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLibContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 766
    :cond_2
    iget-object p1, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 768
    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$1;->$SwitchMap$com$amazon$ea$purchase$model$PurchaseState:[I

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

    .line 787
    :cond_3
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showInYourLib()V

    goto :goto_0

    .line 780
    :cond_4
    invoke-direct {p0, v2, v2, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :cond_5
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_add_to_lib:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_6
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_add_to_lib:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager$BorrowAndDownloadListener;-><init>(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->showAddToLibButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

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

    .line 240
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->book:Lcom/amazon/ea/util/EABookShell;

    .line 241
    invoke-virtual {p1}, Lcom/amazon/ea/util/EABookShell;->getASIN()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    .line 242
    iput-boolean p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyInStore:Z

    .line 243
    iput-boolean p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->oneClickBorrowSupported:Z

    .line 244
    iput-object p4, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->widgetMetricsName:Ljava/lang/String;

    .line 245
    iput-object p5, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->metricsTag:Ljava/lang/String;

    .line 246
    iput-object p7, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buyAsinRefTag:Ljava/lang/String;

    .line 247
    iput-object p8, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->unBuyRefTag:Ljava/lang/String;

    .line 248
    iput-object p9, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowRefTag:Ljava/lang/String;

    .line 249
    iput-object p10, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsContext:Ljava/lang/String;

    .line 250
    iput-object p11, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->rsMetadata:Ljava/util/Map;

    .line 253
    iget-boolean p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->attachedToWindow:Z

    if-eqz p1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->registerListener()V

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->initMetrics()V

    .line 260
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2, p6}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/ea/purchase/PurchaseManager;->getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-result-object p1

    .line 263
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->configureView(Lcom/amazon/ea/purchase/model/PurchaseInfo;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

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

    .line 270
    iput-object p12, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->purchaseStatusListener:Lcom/amazon/readingactions/helpers/purchase/IPurchaseStatusListener;

    .line 271
    invoke-virtual/range {p0 .. p11}, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->initialize(Lcom/amazon/ea/util/EABookShell;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/readingactions/helpers/purchase/PurchaseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setActionMessageColor(I)V
    .locals 0

    .line 424
    iput p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->actionMessageColor:I

    return-void
.end method

.method public setAddToLibContainer(Landroid/view/View;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLibContainer:Landroid/view/View;

    return-void
.end method

.method public setAddToLibViewSet(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->addToLib:Landroid/widget/Button;

    .line 297
    iput-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->inYourLibText:Landroid/widget/TextView;

    .line 298
    iput-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->inYourLibAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    .line 313
    iput-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    return-void
.end method

.method public setBorrowView(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewKU:Landroid/widget/ImageView;

    .line 326
    iput-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->borrowViewPR:Landroid/widget/ImageView;

    .line 327
    iput-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->includedWithMembershipTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setBuySuccessView(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buySuccessToast:Landroid/widget/TextView;

    .line 365
    iput-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->buySuccessAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setCancelView(Landroid/widget/Button;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    return-void
.end method

.method public setCancelView(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelButton:Landroid/widget/Button;

    .line 358
    iput-object p2, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelToast:Landroid/widget/TextView;

    .line 359
    iput-object p3, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->cancelAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setCurrentBookView(Landroid/view/View;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->currentBookCoverView:Landroid/view/View;

    return-void
.end method

.method public setErrorMessageColor(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->errorMessageColor:I

    return-void
.end method

.method public setFailureAsset(Landroid/widget/ImageView;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureAsset:Landroid/widget/ImageView;

    return-void
.end method

.method public setFailureView(Landroid/widget/Button;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 374
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->failureView:Landroid/widget/Button;

    .line 375
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public setReadButton(Landroid/widget/Button;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->readButton:Landroid/widget/Button;

    return-void
.end method

.method public setSeeInStoreButton(Landroid/widget/Button;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->seeInStoreButton:Landroid/widget/Button;

    return-void
.end method

.method public setSeeInStoreChevron(Landroid/widget/ImageView;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->seeInStoreChevron:Landroid/widget/ImageView;

    return-void
.end method

.method public setStatusMessageColor(I)V
    .locals 0

    .line 416
    iput p1, p0, Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;->statusMessageColor:I

    return-void
.end method
