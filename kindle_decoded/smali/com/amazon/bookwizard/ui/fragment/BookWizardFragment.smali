.class public abstract Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.super Landroidx/fragment/app/Fragment;
.source "BookWizardFragment.java"

# interfaces
.implements Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;


# instance fields
.field protected activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

.field protected config:Lcom/amazon/bookwizard/BookWizardConfig;

.field protected data:Lcom/amazon/bookwizard/data/DataProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    check-cast p1, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 44
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-void
.end method

.method public onDataChanged(Lcom/amazon/bookwizard/data/DataProvider;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment$1;-><init>(Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 85
    iput-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 64
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/bookwizard/data/DataProvider;->addDataChangedListener(Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 74
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/bookwizard/data/DataProvider;->removeDataChangedListener(Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;)V

    return-void
.end method

.method protected styleGoodreadsLogo()V
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/State;->isGoodreads()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/amazon/bookwizard/R$id;->bookwizard_goodreads_logo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 112
    sget v3, Lcom/amazon/bookwizard/R$string;->powered_by_goodreads:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 113
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public abstract updateUI()V
.end method
