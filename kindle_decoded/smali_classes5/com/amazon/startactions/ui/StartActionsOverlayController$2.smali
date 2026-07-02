.class Lcom/amazon/startactions/ui/StartActionsOverlayController$2;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/StartActionsOverlayController;->repositionOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$2;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$2;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$100(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_content_container:I

    .line 298
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content container view not found, either because it wasn\'t persisted or because the stub failed to inflate. Cannot reposition overlay."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_0
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/TabletExperience;->shouldUseTabletExperience()Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$2;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x5

    .line 310
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 311
    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$2;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$dimen;->startactions_content_container_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 315
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 316
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 318
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
