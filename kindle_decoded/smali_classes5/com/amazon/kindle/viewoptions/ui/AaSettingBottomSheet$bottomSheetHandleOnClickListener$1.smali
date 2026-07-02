.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;
.super Ljava/lang/Object;
.source "AaSettingBottomSheet.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->access$getBottomSheetBehavior$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->access$getBottomSheetBehavior$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->access$getBottomSheetBehavior$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->access$getBottomSheetBehavior$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_1
    :goto_0
    return-void
.end method
