.class public Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;
.super Landroid/app/DialogFragment;
.source "KuWelcomeDialogFragment.java"


# instance fields
.field private activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    check-cast p1, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 42
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_ku_welcome_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 43
    sget v0, Lcom/amazon/bookwizard/R$id;->ku_welcome_dialog_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    sget v2, Lcom/amazon/bookwizard/R$string;->trunc_bookwizard_ku_welcome_dialog_header:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    sget v3, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_welcome_dialog_header:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment$1;-><init>(Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;Landroid/app/AlertDialog;)V

    .line 61
    sget v2, Lcom/amazon/bookwizard/R$id;->ku_dialog_close_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v2, Lcom/amazon/bookwizard/R$id;->ku_trial_continue_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
