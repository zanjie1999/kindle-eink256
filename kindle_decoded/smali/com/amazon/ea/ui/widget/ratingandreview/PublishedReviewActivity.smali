.class public Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;
.super Lcom/amazon/ea/ui/ThemeActivity;
.source "PublishedReviewActivity.java"


# instance fields
.field public ratingBar:Landroid/widget/RatingBar;

.field public ratingBarLabel:Landroid/widget/TextView;

.field public reviewTextLabel:Landroid/widget/TextView;

.field public reviewTitleLabel:Landroid/widget/TextView;

.field public submittedDateLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/ea/ui/ThemeActivity;-><init>()V

    return-void
.end method

.method private initializeAllFields()V
    .locals 1

    .line 81
    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_rating_bar_label:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->ratingBarLabel:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/amazon/kindle/ea/R$id;->anyactions_rating_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->ratingBar:Landroid/widget/RatingBar;

    .line 83
    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_published_review_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->reviewTitleLabel:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_published_review_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->reviewTextLabel:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_published_review_submitted_on:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->submittedDateLabel:Landroid/widget/TextView;

    return-void
.end method

.method private updateRating(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->ratingBar:Landroid/widget/RatingBar;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    return-void
.end method

.method private updateReviewText(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->reviewTextLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateReviewTitle(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->reviewTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSubmittedDateText(Ljava/lang/String;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->submittedDateLabel:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_posted_on_date:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    .line 45
    sget p1, Lcom/amazon/kindle/ea/R$layout;->endactions_published_review:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->initializeAllFields()V

    .line 50
    invoke-static {p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->setupActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 53
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_see_your_review:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->setTitle(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 56
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->ratingBarLabel:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_your_rating:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->ratingBar:Landroid/widget/RatingBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->createInstance(Landroid/content/Intent;)Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->updateReviewData(Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;)V

    .line 65
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->ratingBar:Landroid/widget/RatingBar;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_review_accessibility_selected_rating:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 65
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/amazon/ea/ui/ThemeActivity;->onDestroy()V

    .line 74
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    return-void
.end method

.method public updateReviewData(Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->updateRating(I)V

    .line 93
    iget-object v0, p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getReviewTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->updateReviewTitle(Ljava/lang/String;)V

    .line 94
    iget-object v0, p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->updateReviewText(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object p1, p1, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->review:Lcom/amazon/ea/reviews/data/Review;

    .line 97
    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getTimeStamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->updateSubmittedDateText(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->reviewTitleLabel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->reviewTextLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;->submittedDateLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
