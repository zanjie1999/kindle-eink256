.class public Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ReviewBookEditPublicNameDialogFragment.java"


# static fields
.field private static final OK_BUTTON_ENABLED_KEY:Ljava/lang/String; = "OK_BUTTON_ENABLED_KEY"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private isGrokWidget:Z

.field private publicName:Ljava/lang/String;

.field private publicNameEditBox:Landroid/widget/EditText;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->isGrokWidget:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->publicNameEditBox:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->publicName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IS_GROK_WIDGET_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->isGrokWidget:Z

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_review_options_edit_public_name:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->view:Landroid/view/View;

    .line 50
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_edit_public_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->publicNameEditBox:Landroid/widget/EditText;

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_edit_name:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_ok:I

    new-instance v4, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)V

    .line 55
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_cancel:I

    new-instance v4, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)V

    .line 69
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->dialog:Landroid/app/AlertDialog;

    const-string v0, "PUBLIC_NAME_KEY"

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->publicName:Ljava/lang/String;

    const-string v0, "OK_BUTTON_ENABLED_KEY"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->publicName:Ljava/lang/String;

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->dialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;

    invoke-direct {v0, p0, v2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;Z)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 103
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->publicNameEditBox:Landroid/widget/EditText;

    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$4;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->publicNameEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUBLIC_NAME_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    const-string v1, "OK_BUTTON_ENABLED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
