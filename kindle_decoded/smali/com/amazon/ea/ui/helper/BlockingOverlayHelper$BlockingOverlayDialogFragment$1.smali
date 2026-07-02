.class Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment$1;
.super Ljava/lang/Object;
.source "BlockingOverlayHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment$1;->this$0:Lcom/amazon/ea/ui/helper/BlockingOverlayHelper$BlockingOverlayDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 113
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
