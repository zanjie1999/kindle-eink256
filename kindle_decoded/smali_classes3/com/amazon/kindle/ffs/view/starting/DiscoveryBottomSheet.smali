.class public final Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "DiscoveryBottomSheet.kt"


# instance fields
.field private final discoveredDevice:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

.field private final negativeButtonListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final positiveButtonListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveredDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveButtonListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "negativeButtonListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v0, Lcom/amazon/kindle/ffs/R$style;->BottomSheetDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->discoveredDevice:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    iput-object p3, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->positiveButtonListener:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->negativeButtonListener:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->onDismiss:Lkotlin/jvm/functions/Function1;

    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ffs/R$layout;->discovery_bottom_sheet:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->view:Landroid/view/View;

    const-string p2, "view"

    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getNegativeButtonListener$p(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->negativeButtonListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getOnDismiss$p(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getPositiveButtonListener$p(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->positiveButtonListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method protected onStart()V
    .locals 4

    .line 37
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onStart()V

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->view:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "behavior"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    .line 45
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->updateState()V

    .line 67
    sget v0, Lcom/amazon/kindle/ffs/R$id;->discover_bottom_sheet_positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet$setContentView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet$setContentView$1;-><init>(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/amazon/kindle/ffs/R$id;->discover_bottom_sheet_negative_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet$setContentView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet$setContentView$2;-><init>(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->discoveredDevice:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getProductIndex()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "zttK"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v1, "q7FX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_2
    const-string v1, "kdm9"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v1, "ftcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v1, "SGCf"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_5
    const-string v1, "CqDR"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_6
    const-string v1, "DJRC"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_7
    const-string v1, "ChRH"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Kindle"

    goto :goto_3

    :sswitch_8
    const-string v1, "5RD9"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_9
    const-string v1, "3bhb"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const-string v0, "Kindle Oasis"

    goto :goto_3

    :sswitch_a
    const-string v1, "2Gxj"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "Kindle Paperwhite"

    goto :goto_3

    .line 78
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;->discoveredDevice:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getAdvertisedName()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_device_found_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget v1, Lcom/amazon/kindle/ffs/R$id;->discover_bottom_sheet_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "view.findViewById<TextVi\u2026over_bottom_sheet_header)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet$setContentView$3;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet$setContentView$3;-><init>(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x17d407 -> :sswitch_a
        0x18abc9 -> :sswitch_9
        0x1953f2 -> :sswitch_8
        0x20057b -> :sswitch_7
        0x200937 -> :sswitch_6
        0x20259c -> :sswitch_5
        0x26cdd7 -> :sswitch_4
        0x301db8 -> :sswitch_3
        0x322885 -> :sswitch_2
        0x343538 -> :sswitch_1
        0x393711 -> :sswitch_0
    .end sparse-switch
.end method

.method public final updateState()V
    .locals 6

    .line 50
    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->getStatus()Lcom/amazon/kindle/ffs/view/starting/Status;

    move-result-object v0

    .line 51
    sget v1, Lcom/amazon/kindle/ffs/R$id;->discover_bottom_sheet_positive_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 52
    sget v2, Lcom/amazon/kindle/ffs/R$id;->discover_bottom_sheet_connecting_button:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 53
    sget-object v3, Lcom/amazon/kindle/ffs/view/starting/Status;->NOT_CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
