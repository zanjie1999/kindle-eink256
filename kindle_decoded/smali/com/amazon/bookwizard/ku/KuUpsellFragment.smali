.class public Lcom/amazon/bookwizard/ku/KuUpsellFragment;
.super Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.source "KuUpsellFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private description:Landroid/widget/TextView;

.field private gridView:Landroid/widget/GridView;

.field private legalese:Landroid/widget/TextView;

.field private listener:Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;

.field private negativeButton:Landroid/widget/Button;

.field private signupButton:Landroid/widget/Button;

.field private spinner:Landroid/widget/ProgressBar;

.field private topText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;-><init>()V

    return-void
.end method

.method private hideSpinner()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->spinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showSpinner()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->gridView:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 111
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object p1

    .line 114
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getAssetKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/service/TextAssets;->getUpsellViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/KuUpsellViewAssets;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    sget-object v2, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 117
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->topText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->legalese:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getLegalText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getYesText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getNoText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 123
    sget-object v3, Lcom/amazon/bookwizard/service/StepFlavor;->KU_7_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 124
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->topText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->legalese:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getLegalText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getYesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getNoText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 130
    sget-object v3, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object p1

    if-ne v3, p1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->topText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->legalese:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getLegalText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getYesText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/KuUpsellViewAssets;->getNoText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_3
    sget-object p1, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->TAG:Ljava/lang/String;

    const-string v0, "Assets missing, using default"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->topText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_offer:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->description:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_offer_description:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->legalese:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_legalese:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_positive:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 143
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_ku_negative:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 144
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->listener:Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    sget v0, Lcom/amazon/bookwizard/R$id;->bookwizard_ku_positive_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->listener:Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;->onSignUp()V

    goto :goto_0

    .line 159
    :cond_1
    sget v0, Lcom/amazon/bookwizard/R$id;->bookwizard_ku_negative_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->listener:Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;->onMaybeLater()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 69
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_ku_offer:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    sget p2, Lcom/amazon/bookwizard/R$id;->content_grid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->gridView:Landroid/widget/GridView;

    .line 72
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->spinner:Landroid/widget/ProgressBar;

    .line 73
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_ku_offer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->topText:Landroid/widget/TextView;

    .line 74
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_ku_offer_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->description:Landroid/widget/TextView;

    .line 75
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_ku_legalese:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->legalese:Landroid/widget/TextView;

    .line 76
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_ku_positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    .line 77
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_ku_negative_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    .line 80
    iget-object p2, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/bookwizard/R$integer;->bookwizard_ku_offer_row_count:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/amazon/bookwizard/R$dimen;->bookwizard_ku_offer_cover_height:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int p3, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$dimen;->bookwizard_ku_offer_cover_spacing_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int p2, p2, v1

    add-int/2addr p3, p2

    .line 83
    iget-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {p2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    sget p2, Lcom/amazon/bookwizard/R$id;->content_grid_overlay:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    iget-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 89
    iget-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->legalese:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    iget-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->signupButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 169
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->updateUI()V

    return-void
.end method

.method public setListener(Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->listener:Lcom/amazon/bookwizard/ku/KuUpsellFragment$KuOfferListener;

    return-void
.end method

.method public updateUI()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->gridView:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->spinner:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->showSpinner()V

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->hideSpinner()V

    .line 205
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellFragment;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/amazon/bookwizard/ku/KuImageAdapter;

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/DataProvider;->getPayoffRecs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/bookwizard/ku/KuImageAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method
