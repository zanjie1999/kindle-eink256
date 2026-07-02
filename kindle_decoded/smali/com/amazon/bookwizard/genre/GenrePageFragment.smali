.class public Lcom/amazon/bookwizard/genre/GenrePageFragment;
.super Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.source "GenrePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;
    }
.end annotation


# static fields
.field private static final GENRE_STEP_NUM:I = 0x1


# instance fields
.field private contentPane:Landroid/widget/ScrollView;

.field private firstLine:Landroid/widget/TextView;

.field private goodReadsLogo:Landroid/widget/TextView;

.field private grid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

.field private listener:Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;

.field private logo:Landroid/widget/ImageView;

.field private nextButton:Landroid/widget/Button;

.field private prevButton:Landroid/widget/Button;

.field private spinner:Landroid/widget/ProgressBar;

.field private stepText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;-><init>()V

    return-void
.end method

.method private startSpinner()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->contentPane:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopSpinner()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->contentPane:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 101
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->stepText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_header_step_text:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/BookWizardConfig;->getTotalSteps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->firstLine:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_header_genre_picker_first_line:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 107
    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object p1

    if-ne v1, p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->logo:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->logo:Landroid/widget/ImageView;

    sget v1, Lcom/amazon/bookwizard/R$drawable;->bookwizard_ku_logo:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->logo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :goto_0
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->prevButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->listener:Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/bookwizard/R$id;->footer_previous_button:I

    if-ne v0, v1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->listener:Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;->onNotNow()V

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/bookwizard/R$id;->footer_next_button:I

    if-ne v0, v1, :cond_2

    .line 203
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->listener:Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;->onNext()V

    goto :goto_1

    .line 204
    :cond_2
    instance-of v0, p1, Lcom/amazon/bookwizard/ui/view/GenreButton;

    if-eqz v0, :cond_4

    .line 205
    check-cast p1, Lcom/amazon/bookwizard/ui/view/GenreButton;

    .line 206
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/view/GenreButton;->isPreferred()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/ui/view/GenreButton;->setPreferred(Z)V

    .line 207
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/view/GenreButton;->isPreferred()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->listener:Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/view/GenreButton;->getGenre()Lcom/amazon/bookwizard/data/Genre;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/view/GenreButton;->isPreferred()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;->onGenreSelected(Lcom/amazon/bookwizard/data/Genre;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 78
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_genre_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    sget p2, Lcom/amazon/bookwizard/R$id;->header_step_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->stepText:Landroid/widget/TextView;

    .line 81
    sget p2, Lcom/amazon/bookwizard/R$id;->genre_content_pane:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->contentPane:Landroid/widget/ScrollView;

    .line 82
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->spinner:Landroid/widget/ProgressBar;

    .line 83
    sget p2, Lcom/amazon/bookwizard/R$id;->genre_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->grid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 84
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_header_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->logo:Landroid/widget/ImageView;

    .line 85
    sget p2, Lcom/amazon/bookwizard/R$id;->header_first_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->firstLine:Landroid/widget/TextView;

    .line 86
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_next_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->nextButton:Landroid/widget/Button;

    .line 87
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_previous_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->prevButton:Landroid/widget/Button;

    .line 88
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_goodreads_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->goodReadsLogo:Landroid/widget/TextView;

    .line 90
    iget-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->prevButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->grid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    .line 135
    iput-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->spinner:Landroid/widget/ProgressBar;

    .line 136
    iput-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->contentPane:Landroid/widget/ScrollView;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/amazon/bookwizard/genre/GenrePageFragment;->updateUI()V

    return-void
.end method

.method public setListener(Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->listener:Lcom/amazon/bookwizard/genre/GenrePageFragment$GenrePageListener;

    return-void
.end method

.method public updateUI()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getGenres()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/genre/GenrePageFragment;->stopSpinner()V

    .line 159
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->styleGoodreadsLogo()V

    .line 160
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->goodReadsLogo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->grid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;->setExpanded(Z)V

    .line 165
    iget-object v0, p0, Lcom/amazon/bookwizard/genre/GenrePageFragment;->grid:Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    new-instance v1, Lcom/amazon/bookwizard/genre/GenreListAdapter;

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/DataProvider;->getGenres()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/bookwizard/genre/GenreListAdapter;-><init>(Lcom/amazon/bookwizard/genre/GenrePageFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 154
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/genre/GenrePageFragment;->startSpinner()V

    return-void
.end method
