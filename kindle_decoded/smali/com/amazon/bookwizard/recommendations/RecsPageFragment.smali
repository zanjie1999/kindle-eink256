.class public Lcom/amazon/bookwizard/recommendations/RecsPageFragment;
.super Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.source "RecsPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;
    }
.end annotation


# static fields
.field private static final KU_BOOK_LIMIT:I = 0xa

.field private static final RECS_STEP_NUM:I = 0x3


# instance fields
.field private contentPane:Landroid/widget/ScrollView;

.field private errorPane:Landroid/widget/ScrollView;

.field private goodReadsLogo:Landroid/widget/TextView;

.field private headerFirstLine:Landroid/widget/TextView;

.field private headerSecondLine:Landroid/widget/TextView;

.field private kuButton:Landroid/widget/Button;

.field private kuContentContainer:Landroid/view/ViewGroup;

.field private kuHeader:Landroid/widget/TextView;

.field private kuLegalese:Landroid/widget/TextView;

.field private kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

.field private kuSpinner:Landroid/widget/ProgressBar;

.field private listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

.field private nextButton:Landroid/widget/Button;

.field private previousButton:Landroid/widget/Button;

.field private recommendationsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

.field private spinner:Landroid/widget/ProgressBar;

.field private stepText:Landroid/widget/TextView;

.field private wtrGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

.field private wtrHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    return-object p0
.end method

.method private isErrorPage()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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

.method private startSpinner()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->contentPane:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->errorPane:Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->errorPane:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopSpinner()V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->contentPane:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->errorPane:Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    goto :goto_2

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->isErrorPage()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->errorPane:Landroid/widget/ScrollView;

    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->isErrorPage()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getKuBooksCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 155
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->previousButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isBackEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->stepText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_header_step_text:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/BookWizardConfig;->getTotalSteps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->stepText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    const-string v2, "kuUpsellView"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/bookwizard/service/Flow;->getStep(Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getAssetKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/service/TextAssets;->getUpsellViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/KuUpsellViewAssets;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->showOfferPage()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuLegalese:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getLegalText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuLegalese:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_legalese:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 320
    sget v0, Lcom/amazon/bookwizard/R$id;->download_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 321
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 322
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->setDownloadContentDescription(Landroid/view/View;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/bookwizard/data/Recommendation;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Recommendation;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;->onDownloadClicked(Lcom/amazon/bookwizard/data/Recommendation;Z)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    new-instance v2, Lcom/amazon/bookwizard/data/Recommendation;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-direct {v2, p1}, Lcom/amazon/bookwizard/data/Recommendation;-><init>(Lcom/amazon/bookwizard/service/PayoffRec;)V

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result p1

    invoke-interface {v1, v2, p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;->onDownloadClicked(Lcom/amazon/bookwizard/data/Recommendation;Z)V

    goto :goto_0

    .line 329
    :cond_1
    sget v0, Lcom/amazon/bookwizard/R$id;->cover_image:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/bookwizard/data/Recommendation;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Recommendation;

    invoke-interface {v0, p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;->onCoverClicked(Lcom/amazon/bookwizard/data/Recommendation;)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    new-instance v1, Lcom/amazon/bookwizard/data/Recommendation;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-direct {v1, p1}, Lcom/amazon/bookwizard/data/Recommendation;-><init>(Lcom/amazon/bookwizard/service/PayoffRec;)V

    invoke-interface {v0, v1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;->onCoverClicked(Lcom/amazon/bookwizard/data/Recommendation;)V

    goto :goto_0

    .line 335
    :cond_3
    sget v0, Lcom/amazon/bookwizard/R$id;->footer_previous_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 336
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;->onBack()V

    goto :goto_0

    .line 337
    :cond_4
    sget v0, Lcom/amazon/bookwizard/R$id;->footer_next_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_5

    .line 338
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;->onNext()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 113
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_recommendations_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 115
    sget p2, Lcom/amazon/bookwizard/R$id;->header_step_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->stepText:Landroid/widget/TextView;

    .line 116
    sget p2, Lcom/amazon/bookwizard/R$id;->recs_content_pane:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->contentPane:Landroid/widget/ScrollView;

    .line 117
    sget p2, Lcom/amazon/bookwizard/R$id;->ku_content_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuContentContainer:Landroid/view/ViewGroup;

    .line 118
    sget p2, Lcom/amazon/bookwizard/R$id;->ku_grid_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuHeader:Landroid/widget/TextView;

    .line 119
    sget p2, Lcom/amazon/bookwizard/R$id;->ku_positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuButton:Landroid/widget/Button;

    .line 120
    sget p2, Lcom/amazon/bookwizard/R$id;->ku_legalese:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuLegalese:Landroid/widget/TextView;

    .line 121
    sget p2, Lcom/amazon/bookwizard/R$id;->ku_recs_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 122
    sget p2, Lcom/amazon/bookwizard/R$id;->recs_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->recommendationsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 123
    sget p2, Lcom/amazon/bookwizard/R$id;->recs_wtr_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrHeader:Landroid/widget/TextView;

    .line 124
    sget p2, Lcom/amazon/bookwizard/R$id;->recs_error_pane:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->errorPane:Landroid/widget/ScrollView;

    .line 125
    sget p2, Lcom/amazon/bookwizard/R$id;->recs_wtr_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 126
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->spinner:Landroid/widget/ProgressBar;

    .line 127
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_goodreads_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->goodReadsLogo:Landroid/widget/TextView;

    .line 128
    sget p2, Lcom/amazon/bookwizard/R$id;->ku_recs_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuSpinner:Landroid/widget/ProgressBar;

    .line 129
    sget p2, Lcom/amazon/bookwizard/R$id;->header_second_line_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->headerSecondLine:Landroid/widget/TextView;

    .line 130
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_previous_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->previousButton:Landroid/widget/Button;

    .line 131
    sget p2, Lcom/amazon/bookwizard/R$id;->header_first_line_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->headerFirstLine:Landroid/widget/TextView;

    .line 132
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_next_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->nextButton:Landroid/widget/Button;

    .line 134
    iget-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->headerFirstLine:Landroid/widget/TextView;

    sget p3, Lcom/amazon/bookwizard/R$string;->bookwizard_header_suggestion_first_line:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->headerSecondLine:Landroid/widget/TextView;

    sget p3, Lcom/amazon/bookwizard/R$string;->bookwizard_header_suggestion_second_line:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->previousButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_done_button_text:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->recommendationsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    new-instance p3, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$1;

    invoke-direct {p3, p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$1;-><init>(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 189
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->contentPane:Landroid/widget/ScrollView;

    .line 192
    iput-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->recommendationsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 193
    iput-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 194
    iput-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->spinner:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->updateUI()V

    return-void
.end method

.method setDownloadContentDescription(Landroid/view/View;)V
    .locals 5

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_item_selected_description:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_item_not_selected_description:I

    .line 357
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$string;->bookwizard_recs_download:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListener(Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->listener:Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    return-void
.end method

.method public updateUI()V
    .locals 7

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->isErrorPage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->stopSpinner()V

    .line 206
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->styleGoodreadsLogo()V

    .line 208
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->recommendationsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->setExpanded(Z)V

    .line 209
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->recommendationsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    new-instance v2, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;

    iget-object v3, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/DataProvider;->getRecommendations()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;-><init>(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;Lcom/amazon/bookwizard/data/DataProvider;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->setExpanded(Z)V

    .line 219
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->wtrGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    new-instance v4, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;

    iget-object v5, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v5}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;-><init>(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;Lcom/amazon/bookwizard/data/DataProvider;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 223
    sget-object v4, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    if-ne v4, v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->goodReadsLogo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuHeader:Landroid/widget/TextView;

    sget v4, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_recs_header:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuButton:Landroid/widget/Button;

    new-instance v4, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;

    invoke-direct {v4, p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;-><init>(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuLegalese:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuLegalese:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->headerSecondLine:Landroid/widget/TextView;

    sget v4, Lcom/amazon/bookwizard/R$string;->bookwizard_header_suggestion_second_line_ku_signed_up:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuHeader:Landroid/widget/TextView;

    sget v4, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_recs_header_signed_up:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuLegalese:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->previousButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->setExpanded(Z)V

    .line 254
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    new-instance v3, Lcom/amazon/bookwizard/recommendations/PayoffRecListAdapter;

    iget-object v4, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v4}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, p0, v4, v0}, Lcom/amazon/bookwizard/recommendations/PayoffRecListAdapter;-><init>(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;Lcom/amazon/bookwizard/data/DataProvider;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuRecsGrid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->kuContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    return-void

    .line 202
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->startSpinner()V

    return-void
.end method
