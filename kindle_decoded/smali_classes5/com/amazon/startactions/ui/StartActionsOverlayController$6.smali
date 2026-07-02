.class Lcom/amazon/startactions/ui/StartActionsOverlayController$6;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/StartActionsOverlayController;->createHeader(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$closeButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Landroid/view/View;)V
    .locals 0

    .line 558
    iput-object p2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$6;->val$closeButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$6;->val$closeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
