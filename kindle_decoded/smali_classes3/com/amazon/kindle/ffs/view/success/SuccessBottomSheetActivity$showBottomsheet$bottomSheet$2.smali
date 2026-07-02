.class final Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SuccessBottomSheetActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;->showBottomsheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$2;->this$0:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$2;->invoke(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->restartDiscovery()V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$showBottomsheet$bottomSheet$2;->this$0:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
