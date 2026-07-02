.class public Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;
.super Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.source "WelcomeScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bodyText:Landroid/widget/TextView;

.field private countryPicker:Landroid/widget/RelativeLayout;

.field private listener:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;

.field private spinner:Landroid/widget/TextView;

.field private spinnerText:Landroid/widget/TextView;

.field private startButton:Landroid/widget/Button;

.field private welcomeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;-><init>()V

    return-void
.end method

.method private showCountryPickerIfNeeded()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->showCountryPicker()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    new-instance v0, Lcom/amazon/bookwizard/data/Country;

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardConfig;->getCor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardConfig;->getCor()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1}, Lcom/amazon/bookwizard/data/Country;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/DataProvider;->getCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    new-instance v0, Lcom/amazon/bookwizard/data/Country;

    invoke-direct {v0, v2}, Lcom/amazon/bookwizard/data/Country;-><init>(Ljava/lang/String;)V

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->spinner:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->spinnerText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/amazon/bookwizard/R$string;->bookwizard_country_label:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->countryPicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 123
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->countryPicker:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 88
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object p1

    .line 91
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getAssetKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/service/TextAssets;->getWelcomeViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/WelcomeViewAssets;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getFirstName()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->welcomeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getHeaderFormat()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->welcomeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->bodyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->startButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getYesButton()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget-object p1, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->TAG:Ljava/lang/String;

    const-string v0, "Using assets from service"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_2
    sget-object v0, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object p1

    if-ne v0, p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->welcomeText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_greeting_text:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->bodyText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_prime_body_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->startButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/bookwizard/R$string;->launch_store:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->welcomeText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_greeting_text:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->bodyText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->welcome_help_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->startButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/bookwizard/R$string;->lets_get_started:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 113
    :goto_2
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->welcomeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->isViaNotification()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-direct {p0}, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->showCountryPickerIfNeeded()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->listener:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    sget v0, Lcom/amazon/bookwizard/R$id;->start_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->listener:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;->onLetsGetStartedClicked()V

    goto :goto_0

    .line 168
    :cond_1
    sget v0, Lcom/amazon/bookwizard/R$id;->country_picker:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget v0, Lcom/amazon/bookwizard/R$id;->country_picker_header:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->listener:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;

    invoke-interface {p1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;->onCountryPickerClicked()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 67
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_welcome_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    sget p2, Lcom/amazon/bookwizard/R$id;->welcome_to_kindle_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->welcomeText:Landroid/widget/TextView;

    .line 70
    sget p2, Lcom/amazon/bookwizard/R$id;->welcome_body_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->bodyText:Landroid/widget/TextView;

    .line 71
    sget p2, Lcom/amazon/bookwizard/R$id;->country_picker_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->spinnerText:Landroid/widget/TextView;

    .line 72
    sget p2, Lcom/amazon/bookwizard/R$id;->country_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->spinner:Landroid/widget/TextView;

    .line 73
    sget p2, Lcom/amazon/bookwizard/R$id;->start_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->startButton:Landroid/widget/Button;

    .line 74
    sget p2, Lcom/amazon/bookwizard/R$id;->cp_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->countryPicker:Landroid/widget/RelativeLayout;

    .line 76
    iget-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->startButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->spinner:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p2, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->spinnerText:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->spinner:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListener(Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment;->listener:Lcom/amazon/bookwizard/welcome/WelcomeScreenFragment$WelcomeScreenListener;

    return-void
.end method

.method public updateUI()V
    .locals 0

    return-void
.end method
