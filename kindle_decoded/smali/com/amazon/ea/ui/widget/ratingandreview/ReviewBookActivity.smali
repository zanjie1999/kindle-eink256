.class public Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;
.super Lcom/amazon/ea/ui/ThemeActivity;
.source "ReviewBookActivity.java"


# static fields
.field public static final GOODREADS_SHELF_WIDGET_NEEDS_UPDATE_KEY:Ljava/lang/String; = "com.amazon.ea.ui.widget.ratingandreview.ReviewBookActivity.GOODREADS_SHELF_WIDGET_NEEDS_UPDATE"

.field private static final NEW_REVIEW_STATE:Ljava/lang/String; = "NEW_REVIEW"

.field private static final REVIEW_TEXT_EDIT_ON_DEVICE_LIMIT:I = 0x1388

.field private static final SOFTKEY_SERVICE_NAME:Ljava/lang/String; = "softkeybar"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authorNameLabel:Landroid/widget/TextView;

.field private bookAuthorLabel:Landroid/widget/TextView;

.field private bookId:Ljava/lang/String;

.field private bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

.field private bookTitleLabel:Landroid/widget/TextView;

.field private goodreadsShelfWidgetNeedsUpdate:Z

.field private isGrokWidget:Z

.field private isRatingSubmitted:Z

.field private isSubmissionErrorDisplayed:Z

.field private lastSubmittedRating:I

.field private metricsTag:Ljava/lang/String;

.field private optionsLabel:Landroid/widget/TextView;

.field private preferredMarketplace:Ljava/lang/String;

.field private publicName:Ljava/lang/String;

.field private rating:Lcom/amazon/ea/reviews/data/Rating;

.field private ratingBar:Landroid/widget/RatingBar;

.field private ratingBarClear:Landroid/widget/ImageView;

.field private ratingBarLabel:Landroid/widget/TextView;

.field private review:Lcom/amazon/ea/reviews/data/Review;

.field private reviewForm:Landroid/widget/LinearLayout;

.field private reviewTextField:Landroid/widget/EditText;

.field private reviewTitleField:Landroid/widget/EditText;

.field private reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

.field private submitButton:Landroid/widget/Button;

.field private toast:Landroid/widget/Toast;

.field private useOdotForGoodreadsRating:Z

.field private validationTextLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/amazon/ea/ui/ThemeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/RatingBar;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBar:Landroid/widget/RatingBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->onRatingBarChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarClear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->handleRatingSubmissionSuccess(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/BookInfo;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->lastSubmittedRating:I

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->toggleBlockingOverlay(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/validation/ReviewValidator;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/TextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->validationTextLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isSubmissionErrorDisplayed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    return-object p0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Rating;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/Button;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTitleField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTextField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewSubmissionErrorDisplay()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->publicName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateRating(IZ)V

    return-void
.end method

.method private bindElements()V
    .locals 2

    .line 372
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bindTextChangedListeners()V

    .line 374
    invoke-static {p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->setupActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 376
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bindRatingBar()V

    .line 378
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitButton:Landroid/widget/Button;

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$3;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->optionsLabel:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_edit_name:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->optionsLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$4;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$4;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindRatingBar()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBar:Landroid/widget/RatingBar;

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 494
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBar:Landroid/widget/RatingBar;

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$6;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$6;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 504
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarClear:Landroid/widget/ImageView;

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$7;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$7;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindTextChangedListeners()V
    .locals 2

    .line 642
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    .line 668
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTitleField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 669
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTextField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private displayRatingToastMessage()V
    .locals 4

    .line 676
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 677
    iget-boolean v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    if-eqz v1, :cond_3

    .line 678
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted_on_amazon_and_goodreads:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    :goto_0
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    .line 681
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted_on_amazon:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 683
    :cond_1
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted_on_goodreads:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    sget-object v1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    goto :goto_0

    .line 689
    :cond_2
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 692
    :cond_3
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted_on_amazon:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 695
    :goto_1
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 697
    invoke-direct {p0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->displayToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private displayToastMessage(Ljava/lang/String;)V
    .locals 3

    .line 707
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_review_toast_message_themed:I

    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_review_toast_message_themed:I

    .line 708
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 707
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 709
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_review_toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 711
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 714
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->toast:Landroid/widget/Toast;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 715
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private handleRatingSubmissionSuccess(IZ)V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/reviews/data/Review;->setRating(I)V

    .line 620
    iput p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->lastSubmittedRating:I

    .line 623
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/reviews/data/Rating;->setValue(I)V

    .line 624
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/ea/reviews/data/Rating;->setTimeStamp(Ljava/util/Date;)V

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->setRatingSubmitted(IZ)V

    const/4 p2, 0x1

    if-lez p1, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->displayRatingToastMessage()V

    .line 629
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "SubmittedRating"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    goto :goto_0

    .line 631
    :cond_0
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_removed:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->displayToastMessage(Ljava/lang/String;)V

    .line 632
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ClearedRating"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 634
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    sget-object p2, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RATE_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {p1, p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V

    .line 637
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {p1, p2}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    return-void
.end method

.method private initializeAllFields(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.amazon.ea.ui.widget.ratingandreview.ReviewBookActivity.GOODREADS_SHELF_WIDGET_NEEDS_UPDATE"

    .line 723
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->goodreadsShelfWidgetNeedsUpdate:Z

    .line 724
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isSubmissionErrorDisplayed:Z

    .line 725
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isRatingSubmitted:Z

    .line 726
    sget p1, Lcom/amazon/kindle/ea/R$id;->anyactions_rating_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBar:Landroid/widget/RatingBar;

    .line 727
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_rating_bar_clear:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarClear:Landroid/widget/ImageView;

    .line 728
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewForm:Landroid/widget/LinearLayout;

    .line 729
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_rating_bar_label:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarLabel:Landroid/widget/TextView;

    .line 730
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_book_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookTitleLabel:Landroid/widget/TextView;

    .line 731
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_book_author:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookAuthorLabel:Landroid/widget/TextView;

    .line 732
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_review_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTitleField:Landroid/widget/EditText;

    .line 733
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_review_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTextField:Landroid/widget/EditText;

    .line 734
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_submit_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitButton:Landroid/widget/Button;

    .line 735
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_validation_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->validationTextLabel:Landroid/widget/TextView;

    .line 736
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_author_name_label:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->authorNameLabel:Landroid/widget/TextView;

    .line 737
    sget p1, Lcom/amazon/kindle/ea/R$id;->endactions_review_form_options_label:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->optionsLabel:Landroid/widget/TextView;

    .line 740
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_review_book:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->setTitle(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 743
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarLabel:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_your_rating:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private manuallySetNewLocalShelf(I)V
    .locals 4

    const/4 v0, 0x1

    .line 830
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 832
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object v2

    .line 833
    invoke-virtual {v2, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-static {v3, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->getShelfForRating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 835
    invoke-virtual {v2, v1, p1, v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private onRatingBarChange(I)V
    .locals 3

    .line 536
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v1, 0x1

    const-string v2, "DidAnything"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 538
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->shouldPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateGoodreadsRatingAndShelf(I)V

    goto :goto_0

    .line 541
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->handleRatingSubmissionSuccess(IZ)V

    :goto_0
    return-void
.end method

.method private reviewSubmissionErrorDisplay()V
    .locals 1

    .line 752
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setRatingSubmitted(IZ)V
    .locals 2

    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isRatingSubmitted:Z

    .line 573
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->shouldPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    iget-boolean v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->goodreadsShelfWidgetNeedsUpdate:Z

    if-nez v1, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->goodreadsShelfWidgetNeedsUpdate:Z

    if-eqz p2, :cond_2

    .line 582
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Rating;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->manuallySetNewLocalShelf(I)V

    .line 585
    :cond_2
    iput-boolean p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->useOdotForGoodreadsRating:Z

    return-void
.end method

.method private shouldPostToAmazon()Z
    .locals 1

    .line 854
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->shouldPostToGoodreads()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private shouldPostToGoodreads()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private submitRating()V
    .locals 4

    const-string v0, "SubmitRating"

    .line 786
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 788
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const-string v1, "HasNetworkConnectivity"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const-string v0, "WidgetTag"

    .line 789
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v0, Lcom/amazon/ea/reviews/submission/RatingMessage;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->shouldPostToAmazon()Z

    move-result v2

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->shouldPostToGoodreads()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->useOdotForGoodreadsRating:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ea/reviews/submission/RatingMessage;-><init>(Lcom/amazon/ea/reviews/data/Rating;ZZ)V

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$11;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$11;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    .line 818
    new-instance v0, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-direct {v0, v1}, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;-><init>(Lcom/amazon/ea/reviews/data/Rating;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 821
    throw v0
.end method

.method private toggleBlockingOverlay(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 943
    invoke-static {p0, v0, p1}, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper;->toggleBlockingOverlay(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private updateBookAuthor(Ljava/lang/String;)V
    .locals 4

    .line 863
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookAuthorLabel:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_author_by:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateBookTitle(Ljava/lang/String;)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateGoodreadsRatingAndShelf(I)V
    .locals 4

    const/4 v0, 0x1

    .line 551
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 553
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->toggleBlockingOverlay(Z)V

    .line 554
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object v0

    .line 555
    invoke-virtual {v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-static {v2, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->getShelfForRating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 557
    sget-object v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateRatingAndShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    :cond_0
    return-void
.end method

.method private updateRating(IZ)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBar:Landroid/widget/RatingBar;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    if-eqz p2, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->onRatingBarChange(I)V

    :cond_0
    return-void
.end method

.method private updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V
    .locals 9

    .line 885
    iget-object v0, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_INVALID_RATING:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_star_rating:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 889
    :goto_0
    iget-object v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v3, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TITLE_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 890
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_ampersand:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_headline:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    :cond_2
    iget-object v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v3, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_INVALID:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreWordsNeeded:I

    if-lez v2, :cond_4

    .line 898
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_ampersand:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/ea/R$plurals;->endactions_reviews_more_words:I

    iget v6, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreWordsNeeded:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 902
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 901
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_space_required:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    :cond_5
    iget-object v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v5, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_INVALID:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreWordsNeeded:I

    if-nez v2, :cond_6

    iget v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreUniqueWordsNeeded:I

    if-lez v2, :cond_6

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_repeated_words:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    :cond_6
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v5, 0x1388

    if-lt v2, v5, :cond_7

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_max_length:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    :cond_7
    iget-boolean v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isSubmissionErrorDisplayed:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 922
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->validationTextLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    :cond_8
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->validationTextLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 929
    iget-object p1, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 930
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 932
    :cond_9
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    iget-boolean v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->goodreadsShelfWidgetNeedsUpdate:Z

    const-string v2, "com.amazon.ea.ui.widget.ratingandreview.ReviewBookActivity.GOODREADS_SHELF_WIDGET_NEEDS_UPDATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 325
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 328
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 329
    iget-boolean v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    if-eqz v1, :cond_1

    .line 330
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CANCEL_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 337
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v1}, Lcom/amazon/ea/reviews/data/Review;->isSubmitted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {v1, v0, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V

    .line 341
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTitleField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 145
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;

    invoke-direct {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;-><init>()V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->saveReviewAndFinish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 225
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 228
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    .line 231
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->toast:Landroid/widget/Toast;

    .line 233
    sget v0, Lcom/amazon/kindle/ea/R$layout;->endactions_review_form:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    .line 238
    invoke-static {p1}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->createInstance(Landroid/os/Bundle;)Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->createInstance(Landroid/content/Intent;)Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 251
    :cond_1
    iget-boolean v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isGrokWidget:Z

    iput-boolean v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    .line 254
    iget-object v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    .line 255
    iget-object v1, v1, Lcom/amazon/ea/reviews/data/BookInfo;->bookId:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookId:Ljava/lang/String;

    .line 258
    iget-object v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->metricsTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    .line 261
    iget-object v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->preferredMarketplace:Ljava/lang/String;

    .line 262
    new-instance v2, Lcom/amazon/ea/reviews/validation/ReviewValidator;

    invoke-direct {v2, v1}, Lcom/amazon/ea/reviews/validation/ReviewValidator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    .line 265
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->initializeAllFields(Landroid/os/Bundle;)V

    .line 267
    iget-object p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    if-nez p1, :cond_2

    new-instance p1, Lcom/amazon/ea/reviews/data/Review;

    iget v2, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    iget-object v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v3, v1, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ea/reviews/data/Review;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    .line 269
    new-instance p1, Lcom/amazon/ea/reviews/data/Rating;

    iget v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    iget-object v2, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v2, v2, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/amazon/ea/reviews/data/Rating;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    .line 270
    iget p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->lastSubmittedRating:I

    iput p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->lastSubmittedRating:I

    .line 273
    iget-object p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    if-eqz p1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTitleField:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getReviewTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewTextField:Landroid/widget/EditText;

    iget-object v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v1}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_3
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bindElements()V

    .line 279
    iget p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->rating:I

    iget-boolean v1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->isNewRating:Z

    invoke-direct {p0, p1, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateRating(IZ)V

    .line 281
    iget-boolean p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->shouldSubmitPublicName:Z

    if-eqz p1, :cond_4

    .line 282
    iget-object p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->publicName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitPublicName(Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_4
    iget-object p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->publicName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updatePublicName(Ljava/lang/String;)V

    .line 288
    :goto_1
    iget-object p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object p1, p1, Lcom/amazon/ea/reviews/data/BookInfo;->title:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateBookTitle(Ljava/lang/String;)V

    .line 289
    iget-object p1, v0, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object p1, p1, Lcom/amazon/ea/reviews/data/BookInfo;->authors:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateBookAuthor(Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBar:Landroid/widget/RatingBar;

    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 300
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewForm:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookAuthorLabel:Landroid/widget/TextView;

    .line 301
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarLabel:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->ratingBarLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    .line 306
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {p1, v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/amazon/ea/ui/ThemeActivity;->onDestroy()V

    .line 158
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method

.method public onGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 590
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 592
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 364
    invoke-static {p1, p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->activityOptionItemSelected(Landroid/view/MenuItem;Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

.method protected onPause()V
    .locals 2

    .line 312
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isRatingSubmitted:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitRating()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/ea/reviews/data/Review;->setTimeStamp(Ljava/util/Date;)V

    .line 317
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-static {v0, v1}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->saveReview(Ljava/lang/String;Lcom/amazon/ea/reviews/data/Review;)V

    .line 318
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 12

    .line 346
    new-instance v11, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->publicName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->rating:Lcom/amazon/ea/reviews/data/Rating;

    .line 347
    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Rating;->getValue()I

    move-result v5

    iget v6, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->lastSubmittedRating:I

    iget-object v7, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->metricsTag:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->preferredMarketplace:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;-><init>(Lcom/amazon/ea/reviews/data/BookInfo;Lcom/amazon/ea/reviews/data/Review;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 348
    invoke-virtual {v11, p1}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->addToBundle(Landroid/os/Bundle;)V

    .line 349
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->goodreadsShelfWidgetNeedsUpdate:Z

    const-string v1, "com.amazon.ea.ui.widget.ratingandreview.ReviewBookActivity.GOODREADS_SHELF_WIDGET_NEEDS_UPDATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveReviewAndFinish()V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bookId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-static {v0, v1}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->saveReview(Ljava/lang/String;Lcom/amazon/ea/reviews/data/Review;)V

    const/4 v0, -0x1

    .line 778
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 779
    invoke-virtual {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->finish()V

    return-void
.end method

.method public submitPublicName(Ljava/lang/String;)V
    .locals 2

    .line 172
    new-instance v0, Lcom/amazon/ea/reviews/submission/PenNameMessage;

    invoke-direct {v0, p1}, Lcom/amazon/ea/reviews/submission/PenNameMessage;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;->setPublicName(Ljava/lang/String;J)Z

    .line 178
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updatePublicName(Ljava/lang/String;)V

    .line 181
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v0, 0x1

    const-string v1, "SubmittedPublicName"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 182
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method public updatePublicName(Ljava/lang/String;)V
    .locals 3

    .line 192
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->publicName:Ljava/lang/String;

    .line 195
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->isGrokWidget:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 197
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_amazon_and_goodreads:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_amazon:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_goodreads:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 206
    :cond_3
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_amazon:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 210
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->authorNameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method
