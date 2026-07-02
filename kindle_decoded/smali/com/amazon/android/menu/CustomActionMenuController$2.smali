.class Lcom/amazon/android/menu/CustomActionMenuController$2;
.super Ljava/lang/Object;
.source "CustomActionMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/menu/CustomActionMenuController;->updateButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$button:Landroid/view/ViewGroup;

.field final synthetic val$buttonModel:Lcom/amazon/android/menu/CustomActionMenuButton;


# direct methods
.method constructor <init>(Lcom/amazon/android/menu/CustomActionMenuController;Landroid/view/ViewGroup;Lcom/amazon/android/menu/CustomActionMenuButton;)V
    .locals 0

    .line 251
    iput-object p2, p0, Lcom/amazon/android/menu/CustomActionMenuController$2;->val$button:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/amazon/android/menu/CustomActionMenuController$2;->val$buttonModel:Lcom/amazon/android/menu/CustomActionMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController$2;->val$button:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/android/menu/CustomActionMenuController$2;->val$buttonModel:Lcom/amazon/android/menu/CustomActionMenuButton;

    invoke-interface {v1}, Lcom/amazon/android/menu/CustomActionMenuButton;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController$2;->val$button:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/android/menu/CustomActionMenuController$2;->val$buttonModel:Lcom/amazon/android/menu/CustomActionMenuButton;

    invoke-interface {v1}, Lcom/amazon/android/menu/CustomActionMenuButton;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 257
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController$2;->val$button:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
