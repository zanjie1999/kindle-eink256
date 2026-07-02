.class final Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1$1;
.super Ljava/lang/Object;
.source "PairingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;->setFocusOnTermsAndConditions()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kindle.ffs.view.pairing.PairingBottomSheet"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
