.class Lcom/amazon/startactions/ui/StartActionsOverlayController$4;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/StartActionsOverlayController;->requestAccessibilityFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 448
    iput-object p2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$4;->val$contentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$4;->val$contentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method
