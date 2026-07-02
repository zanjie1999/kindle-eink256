.class public Lcom/amazon/bookwizard/prime/PrimeLandingController;
.super Lcom/amazon/bookwizard/BookWizardController;
.source "PrimeLandingController.java"

# interfaces
.implements Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;


# static fields
.field private static final LP_REF:Ljava/lang/String; = "bookwizard_lp"


# instance fields
.field private final fragment:Lcom/amazon/bookwizard/prime/PrimeLandingFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;)V

    .line 40
    new-instance p1, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;

    invoke-direct {p1}, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingController;->fragment:Lcom/amazon/bookwizard/prime/PrimeLandingFragment;

    .line 42
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->setListener(Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "primeLandingView"

    return-object v0
.end method

.method public onClose()V
    .locals 2

    const-string v0, "BookWizardLandingScreen"

    const-string v1, "Close"

    .line 81
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToLibrary()V

    return-void
.end method

.method public onEnd()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardController;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    const-string v1, "bookwizard_lp"

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToStore(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "BookWizardLandingScreen"

    const-string v1, "GoToStoreClicked"

    .line 71
    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardController;->next()V

    return-void
.end method

.method public showView(Lcom/amazon/bookwizard/service/FlowStep;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardController;->step:Lcom/amazon/bookwizard/service/FlowStep;

    .line 61
    iget-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingController;->fragment:Lcom/amazon/bookwizard/prime/PrimeLandingFragment;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/BookWizardController;->showFragment(Landroidx/fragment/app/Fragment;)V

    const-string p1, "BookWizardLandingScreen"

    .line 63
    invoke-static {p1}, Lcom/amazon/bookwizard/util/M;->show(Ljava/lang/String;)V

    return-void
.end method
