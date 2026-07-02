.class public Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ReviewBookOptionsDialogFragment.java"


# static fields
.field private static final IS_AMAZON_CHECKED_KEY:Ljava/lang/String; = "IS_AMAZON_CHECKED_KEY"

.field private static final IS_GOODREADS_CHECKED_KEY:Ljava/lang/String; = "IS_GOODREADS_CHECKED_KEY"

.field private static final SAVE_BUTTON_ENABLED_KEY:Ljava/lang/String; = "SAVE_BUTTON_ENABLED_KEY"


# instance fields
.field private amazonCheck:Landroid/widget/CheckBox;

.field private dialog:Landroid/app/AlertDialog;

.field private editPublicNameLabel:Landroid/widget/TextView;

.field private goodreadsCheck:Landroid/widget/CheckBox;

.field private publicName:Ljava/lang/String;

.field private publicNameLabel:Landroid/widget/TextView;

.field private submitPublicName:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->amazonCheck:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->goodreadsCheck:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->submitPublicName:Z

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->setErrorMessage()V

    return-void
.end method

.method private setErrorMessage()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->amazonCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->goodreadsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_must_select:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_must_select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PUBLIC_NAME_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->submitPublicName:Z

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 50
    sget v2, Lcom/amazon/kindle/ea/R$layout;->endactions_review_options:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    .line 53
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_post_review_on:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_save:I

    new-instance v4, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)V

    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_cancel:I

    new-instance v4, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)V

    .line 69
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    .line 79
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_amazon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->amazonCheck:Landroid/widget/CheckBox;

    .line 80
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_goodreads:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->goodreadsCheck:Landroid/widget/CheckBox;

    .line 81
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_public_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicNameLabel:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_edit_public_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->editPublicNameLabel:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicNameLabel:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_public_name:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    const-string v1, "IS_AMAZON_CHECKED_KEY"

    .line 94
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "IS_GOODREADS_CHECKED_KEY"

    .line 95
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "SAVE_BUTTON_ENABLED_KEY"

    .line 96
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    .line 100
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v2

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;ZZZ)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 119
    new-instance p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$4;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$4;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->amazonCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->goodreadsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->editPublicNameLabel:Landroid/widget/TextView;

    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$5;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$5;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->amazonCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "IS_AMAZON_CHECKED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->goodreadsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "IS_GOODREADS_CHECKED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    const-string v1, "SAVE_BUTTON_ENABLED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public updatePublicName(Ljava/lang/String;)V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 172
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicName:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->publicNameLabel:Landroid/widget/TextView;

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_options_public_name:I

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 178
    iput-boolean v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->submitPublicName:Z

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->amazonCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->goodreadsCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_must_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->view:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_reviews_options_must_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
