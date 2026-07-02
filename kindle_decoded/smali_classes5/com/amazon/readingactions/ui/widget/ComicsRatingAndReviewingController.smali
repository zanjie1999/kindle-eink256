.class public final Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingController;
.super Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;
.source "ComicsRatingAndReviewingController.kt"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "endActionsActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getEndActionsActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 23
    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_ea_rating_and_reviewing:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "endActionsActivity.layou\u2026reviewing, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_and_title_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_and_title_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingAndTitleContainer(Landroid/view/ViewGroup;)V

    .line 27
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_and_reviewing_widget_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026d_reviewing_widget_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setWidgetTitle(Landroid/widget/TextView;)V

    .line 28
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getWidgetTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getModel()Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getWidgetTitle()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingDescription(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)V

    .line 32
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingDescription()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_stars_unrated:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_stars_unrated)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingStarsUnrated(Landroid/widget/RatingBar;)V

    .line 35
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_stars_rated:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_stars_rated)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingStarsRated(Landroid/widget/RatingBar;)V

    .line 37
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_review_divisor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_review_divisor)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingReviewDivisor(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingReviewDivisor()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_container:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormContainer(Landroid/view/ViewGroup;)V

    .line 42
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewHeader(Landroid/widget/TextView;)V

    .line 43
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewHeader()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormTitle(Landroid/widget/EditText;)V

    .line 46
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormTitle()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_form_edittext:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormTitle()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 48
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormTitle()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 50
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_body:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_body)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormBody(Landroid/widget/EditText;)V

    .line 51
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormBody()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_form_edittext:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormBody()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormBody()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 55
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_validation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_validation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormValidation(Landroid/widget/TextView;)V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormValidation()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_author:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_author)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormAuthor(Landroid/widget/TextView;)V

    .line 59
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormAuthor()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026w_form_options_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormOptionsContainer(Landroid/view/ViewGroup;)V

    .line 63
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_options_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormOptionsTitle(Landroid/widget/TextView;)V

    .line 64
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsTitle()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_post_amazon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026form_options_post_amazon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormOptionsAmazonCheckbox(Landroid/widget/CheckBox;)V

    .line 67
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsAmazonCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 69
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_post_goodreads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026m_options_post_goodreads)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormOptionsGoodReadsCheckbox(Landroid/widget/CheckBox;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsGoodReadsCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 72
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_must_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026form_options_must_select)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormOptionsMustSelect(Landroid/widget/TextView;)V

    .line 73
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsMustSelect()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_submit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_submit)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormSubmit(Landroid/widget/Button;)V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormSubmit()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormSubmit()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_cancel)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setReviewFormCancel(Landroid/widget/Button;)V

    .line 80
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormCancel()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormCancel()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-object p1
.end method

.method public setFormOptionsListener()V
    .locals 3

    .line 87
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsAmazonCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    new-instance v0, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingController$setFormOptionsListener$handler$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingController$setFormOptionsListener$handler$1;-><init>(Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingController;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsAmazonCheckbox()Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingControllerKt$sam$OnCheckedChangeListener$3cf8554c;

    invoke-direct {v2, v0}, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingControllerKt$sam$OnCheckedChangeListener$3cf8554c;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
