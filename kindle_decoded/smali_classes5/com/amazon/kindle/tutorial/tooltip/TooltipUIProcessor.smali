.class public final Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;
.super Ljava/lang/Object;
.source "TooltipUIProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;,
        Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;
    }
.end annotation


# instance fields
.field private final anchorLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final anchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/model/TooltipUI;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/tutorial/model/TooltipUI;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "userInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorLocations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->anchors:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->anchorLocations:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$animateSwitchViewTo(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->animateSwitchViewTo(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V

    return-void
.end method

.method public static final synthetic access$getUserInterface$p(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;)Lcom/amazon/kindle/tutorial/model/TooltipUI;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    return-object p0
.end method

.method public static final synthetic access$recordCMXTooltipFastMetrics(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->recordCMXTooltipFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    return-void
.end method

.method public static final synthetic access$switchViewTo(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->switchViewTo(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V

    return-void
.end method

.method private final animateSwitchViewTo(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V
    .locals 1

    .line 60
    new-instance v0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$animateSwitchViewTo$fadeOut$1;-><init>(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V

    .line 67
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->animateViewsOut(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private final isLastPage(I)Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final recordCMXTooltipFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
    .locals 1

    .line 88
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getMetricsName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics;->recordDay1TooltipMetric(Ljava/lang/String;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    :cond_0
    return-void
.end method

.method private final switchViewTo(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->anchors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 33
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->anchorLocations:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 34
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    .line 36
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setTooltipMessage(Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;)V

    .line 37
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getSettings()Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setTooltipSettings(Lcom/amazon/kindle/tutorial/model/TooltipSettings;)V

    .line 38
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setAnchor(Landroid/view/View;)V

    .line 39
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setAnchorLocation(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 42
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setDisplayCount(II)V

    .line 45
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->isLastPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getDoneButton()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getNextButton()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->isLastPage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;-><init>(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;

    add-int/lit8 v2, p2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;-><init>(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V

    .line 49
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->isLastPage(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setTooltipButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->userInterface:Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->VIEW:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->recordCMXTooltipFastMetrics(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    return-void
.end method


# virtual methods
.method public final showUserInterface(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->switchViewTo(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V

    .line 28
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->showTutorialViews()V

    return-void
.end method
