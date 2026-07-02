.class public Lcom/amazon/bookwizard/payoff/PayoffFragment;
.super Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.source "PayoffFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;
    }
.end annotation


# static fields
.field private static final MAX_BOOKS:I = 0xa

.field private static final STEP_NUMBER:I = 0x2


# instance fields
.field private grid:Landroid/widget/GridView;

.field private header:Landroid/widget/TextView;

.field private listener:Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

.field private logo:Landroid/widget/ImageView;

.field private nextButton:Landroid/widget/Button;

.field private prevButton:Landroid/widget/Button;

.field private spinner:Landroid/widget/ProgressBar;

.field private stepText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/payoff/PayoffFragment;)Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->listener:Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    return-object p0
.end method

.method private startSpinner()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->grid:Landroid/widget/GridView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopSpinner()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->grid:Landroid/widget/GridView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateHeaderText()V
    .locals 7

    .line 242
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffDownloadCount()I

    move-result v1

    const/16 v2, 0xa

    rsub-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->header:Landroid/widget/TextView;

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_books_header_done:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    iget-object v2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->header:Landroid/widget/TextView;

    sget v3, Lcom/amazon/bookwizard/R$plurals;->bookwizard_ku_books_header_rated:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 249
    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->header:Landroid/widget/TextView;

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_prime_payoff_top_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->header:Landroid/widget/TextView;

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_books_header_offer:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->logo:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/bookwizard/R$drawable;->bookwizard_prime_logo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->logo:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/bookwizard/R$drawable;->bookwizard_ku_logo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->stepText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_header_step_text:I

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v4}, Lcom/amazon/bookwizard/BookWizardConfig;->getTotalSteps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->prevButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->updateHeaderText()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->listener:Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/service/PayoffRec;

    .line 215
    sget v1, Lcom/amazon/bookwizard/R$id;->details_icon:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 216
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->listener:Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    invoke-interface {p1, v0}, Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;->onBookDetailClicked(Lcom/amazon/bookwizard/service/PayoffRec;)V

    goto :goto_2

    .line 217
    :cond_1
    sget v1, Lcom/amazon/bookwizard/R$id;->cover_image:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 218
    check-cast p1, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;

    .line 219
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffDownloadCount()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    .line 220
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->listener:Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;->postSelectionLimitExceededDialog()V

    return-void

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/bookwizard/data/DataProvider;->unmarkForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/bookwizard/data/DataProvider;->markForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)V

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->setChecked(Z)V

    .line 231
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 232
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->nextButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffDownloadCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->updateHeaderText()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 84
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_payoff:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    sget p2, Lcom/amazon/bookwizard/R$id;->header_step_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->stepText:Landroid/widget/TextView;

    .line 87
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_payoff_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->logo:Landroid/widget/ImageView;

    .line 88
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->header:Landroid/widget/TextView;

    .line 89
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_payoff_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->grid:Landroid/widget/GridView;

    .line 90
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->spinner:Landroid/widget/ProgressBar;

    .line 91
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_previous_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->prevButton:Landroid/widget/Button;

    .line 92
    sget p2, Lcom/amazon/bookwizard/R$id;->footer_next_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->nextButton:Landroid/widget/Button;

    .line 94
    iget-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->prevButton:Landroid/widget/Button;

    sget p3, Lcom/amazon/bookwizard/R$string;->bookwizard_previous_button_text:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 95
    iget-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->prevButton:Landroid/widget/Button;

    new-instance p3, Lcom/amazon/bookwizard/payoff/PayoffFragment$1;

    invoke-direct {p3, p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment$1;-><init>(Lcom/amazon/bookwizard/payoff/PayoffFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->nextButton:Landroid/widget/Button;

    sget p3, Lcom/amazon/bookwizard/R$string;->bookwizard_done_button_text:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 106
    iget-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->nextButton:Landroid/widget/Button;

    new-instance p3, Lcom/amazon/bookwizard/payoff/PayoffFragment$2;

    invoke-direct {p3, p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment$2;-><init>(Lcom/amazon/bookwizard/payoff/PayoffFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->nextButton:Landroid/widget/Button;

    iget-object p3, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p3}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffDownloadCount()I

    move-result p3

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 145
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->updateUI()V

    return-void
.end method

.method public setListener(Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->listener:Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    return-void
.end method

.method public updateUI()V
    .locals 3

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->updateHeaderText()V

    .line 174
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->stopSpinner()V

    .line 175
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->grid:Landroid/widget/GridView;

    new-instance v1, Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;-><init>(Landroid/view/View$OnClickListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void

    .line 166
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->startSpinner()V

    .line 167
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDownloadManager()Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->hasDownloadFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment;->listener:Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    invoke-interface {v0}, Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;->postNetworkFailureDialog()V

    :cond_3
    return-void
.end method
