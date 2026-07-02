.class Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7$1;
.super Ljava/lang/Object;
.source "TooltipTutorialLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/amazon/kindle/tutorial/model/ActionConfig;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 0

    .line 528
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7$1;->val$action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 531
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7$1;->val$action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7$1;->val$action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->handleAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
