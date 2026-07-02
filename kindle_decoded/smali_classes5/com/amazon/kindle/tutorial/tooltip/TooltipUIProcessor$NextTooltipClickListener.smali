.class final Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;
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
    name = "NextTooltipClickListener"
.end annotation


# instance fields
.field private final index:I

.field private final layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

.field final synthetic this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;",
            "I)V"
        }
    .end annotation

    const-string v0, "layout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    iput p3, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    iget v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->index:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->access$getUserInterface$p(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;)Lcom/amazon/kindle/tutorial/model/TooltipUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->ADVANCE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->access$recordCMXTooltipFastMetrics(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->this$0:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->layout:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    iget v1, p0, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor$NextTooltipClickListener;->index:I

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->access$animateSwitchViewTo(Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;I)V

    return-void
.end method
