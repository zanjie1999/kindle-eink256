.class public Lcom/amazon/bookwizard/ratings/RatingsPageFragment;
.super Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.source "RatingsPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;
    }
.end annotation


# static fields
.field private static final STEP_NUMBER:I = 0x2


# instance fields
.field private adapter:Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;

.field private contentPane:Landroid/widget/ScrollView;

.field private listener:Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;

.field private ratingHeaderText:Landroid/widget/TextView;

.field private shovelerContainer:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

.field private spinner:Landroid/widget/ProgressBar;

.field private stepText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/ratings/RatingsPageFragment;)Lcom/amazon/bookwizard/data/DataProvider;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-object p0
.end method

.method private isDataReady()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPopularBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 194
    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredEmptyGenres()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startSpinner()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->contentPane:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopSpinner()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->contentPane:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged(Lcom/amazon/bookwizard/data/Category;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->adapter:Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->notifyDataSetChanged(Lcom/amazon/bookwizard/data/Category;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->stepText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_header_step_text:I

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardConfig;->getTotalSteps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->listener:Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/bookwizard/R$id;->footer_previous_button:I

    if-ne v0, v1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->listener:Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;->onBack()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/amazon/bookwizard/R$id;->footer_next_button:I

    if-ne p1, v0, :cond_2

    .line 233
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->listener:Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;->onNext()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 67
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_ratings_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    sget p2, Lcom/amazon/bookwizard/R$id;->header_step_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->stepText:Landroid/widget/TextView;

    .line 70
    sget p2, Lcom/amazon/bookwizard/R$id;->header_second_line_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->ratingHeaderText:Landroid/widget/TextView;

    .line 71
    sget p2, Lcom/amazon/bookwizard/R$id;->ratings_content_pane:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->contentPane:Landroid/widget/ScrollView;

    .line 72
    sget p2, Lcom/amazon/bookwizard/R$id;->ratings_shoveler_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->shovelerContainer:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 73
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->spinner:Landroid/widget/ProgressBar;

    .line 75
    sget p2, Lcom/amazon/bookwizard/R$id;->header_first_line_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 76
    sget p3, Lcom/amazon/bookwizard/R$string;->bookwizard_header_rating_first_line:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_previous_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 79
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_next_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 82
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance p2, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;

    iget-object p3, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p3}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;-><init>(Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;)V

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->adapter:Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;

    .line 85
    iget-object p3, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->shovelerContainer:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {p3, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object p2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->shovelerContainer:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->setExpanded(Z)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 118
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->updateUI()V

    return-void
.end method

.method public setListener(Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->listener:Lcom/amazon/bookwizard/ratings/RatingsPageFragment$RatingsListener;

    return-void
.end method

.method public setRatingHeaderText(I)V
    .locals 6

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-nez p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->ratingHeaderText:Landroid/widget/TextView;

    sget v3, Lcom/amazon/bookwizard/R$string;->bookwizard_header_rating_books_start:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ge p1, v2, :cond_2

    sub-int/2addr v2, p1

    .line 252
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->ratingHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/bookwizard/R$plurals;->bookwizard_header_rating_books_needed:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->ratingHeaderText:Landroid/widget/TextView;

    sget v3, Lcom/amazon/bookwizard/R$string;->bookwizard_header_rating_books_completed:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateAdapter()V
    .locals 2

    .line 140
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredGenres()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    new-instance v1, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment$1;-><init>(Lcom/amazon/bookwizard/ratings/RatingsPageFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->adapter:Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->updateCollections(Ljava/util/List;)V

    return-void
.end method

.method public updateUI()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->stopSpinner()V

    .line 131
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->styleGoodreadsLogo()V

    .line 132
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatingsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->setRatingHeaderText(I)V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->updateAdapter()V

    return-void

    .line 126
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/ratings/RatingsPageFragment;->startSpinner()V

    return-void
.end method
