.class Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$2;
.super Ljava/lang/Object;
.source "BottomSheetPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$2;->this$0:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$2;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$2;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 56
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$2;->this$0:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    invoke-static {p1}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->access$000(Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method
