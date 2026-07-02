.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$6;
.super Ljava/lang/Object;
.source "TooltipTutorialLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupButtons(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$6;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 512
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$6;->this$0:Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 513
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 514
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
