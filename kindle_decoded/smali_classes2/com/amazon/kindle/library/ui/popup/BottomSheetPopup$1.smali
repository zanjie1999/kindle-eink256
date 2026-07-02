.class Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$1;
.super Ljava/lang/Object;
.source "BottomSheetPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$1;->this$0:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup$1;->this$0:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    invoke-static {p1}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->access$000(Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method
