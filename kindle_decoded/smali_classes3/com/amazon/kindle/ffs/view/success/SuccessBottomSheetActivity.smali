.class public final Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;
.super Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;
.source "SuccessBottomSheetActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$Companion;


# instance fields
.field private bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 29
    sget v0, Lcom/amazon/kindle/ffs/R$layout;->invisible_activity:I

    return v0
.end method

.method protected parseArguments(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "successBottomSheet"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p1, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetUnsatisfiedDependencyException;

    const-string v0, "This class needs a bundle. Use `getIntentWithArguments`"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetUnsatisfiedDependencyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method

.method protected showBottomsheet()V
    .locals 3

    .line 32
    new-instance v0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;

    .line 34
    sget-object v1, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$1;->INSTANCE:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$1;

    .line 37
    new-instance v2, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$2;-><init>(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;)V

    .line 32
    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
