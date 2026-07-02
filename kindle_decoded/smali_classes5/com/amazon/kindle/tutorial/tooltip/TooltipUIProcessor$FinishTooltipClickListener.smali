.class final Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;
.super Ljava/lang/Object;
.source "TooltipUIProcessor.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FinishTooltipClickListener"
.end annotation


# instance fields
.field private final layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

.field final synthetic this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;",
            ")V"
        }
    .end annotation

    const-string v0, "layout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;->layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    invoke-static {p1}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->access$getUserInterface$p(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;)Lcom/amazon/kindle/tutorial/model/TooltipUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->CLOSE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->access$recordCMXTooltipFastMetrics(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 83
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$FinishTooltipClickListener;->layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
