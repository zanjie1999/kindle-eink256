.class public Lcom/amazon/bookwizard/prime/PrimeLandingFragment;
.super Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;
.source "PrimeLandingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bodyText:Landroid/widget/TextView;

.field private closeButton:Landroid/widget/ImageButton;

.field private headerText:Landroid/widget/TextView;

.field private listener:Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;

.field private startButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/bookwizard/prime/PrimeLandingFragment;)Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->listener:Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 96
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object p1

    .line 99
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getAssetKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/service/TextAssets;->getWelcomeViewAssets(Ljava/lang/String;)Lcom/amazon/bookwizard/service/WelcomeViewAssets;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->headerText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getHeaderFormat()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->headerText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->bodyText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->startButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/WelcomeViewAssets;->getYesButton()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget-object p1, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->TAG:Ljava/lang/String;

    const-string v0, "Using text assets from service"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->headerText:Landroid/widget/TextView;

    sget v2, Lcom/amazon/bookwizard/R$string;->landing_header_text:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->bodyText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/bookwizard/R$string;->landing_help_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->startButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/bookwizard/R$string;->launch_store:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_landing_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    sget p2, Lcom/amazon/bookwizard/R$id;->close_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->closeButton:Landroid/widget/ImageButton;

    .line 66
    sget p2, Lcom/amazon/bookwizard/R$id;->start_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->startButton:Landroid/widget/Button;

    .line 67
    sget p2, Lcom/amazon/bookwizard/R$id;->welcome_to_header_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->headerText:Landroid/widget/TextView;

    .line 68
    sget p2, Lcom/amazon/bookwizard/R$id;->welcome_to_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->bodyText:Landroid/widget/TextView;

    .line 70
    iget-object p2, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->startButton:Landroid/widget/Button;

    new-instance p3, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$1;

    invoke-direct {p3, p0}, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$1;-><init>(Lcom/amazon/bookwizard/prime/PrimeLandingFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p2, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->closeButton:Landroid/widget/ImageButton;

    new-instance p3, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$2;

    invoke-direct {p3, p0}, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$2;-><init>(Lcom/amazon/bookwizard/prime/PrimeLandingFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p2, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->bodyText:Landroid/widget/TextView;

    const/4 p3, 0x0

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object p1
.end method

.method public setListener(Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->listener:Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;

    return-void
.end method

.method public updateUI()V
    .locals 0

    return-void
.end method
