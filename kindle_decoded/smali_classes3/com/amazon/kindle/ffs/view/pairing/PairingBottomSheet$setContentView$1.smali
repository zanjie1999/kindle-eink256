.class final Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PairingBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;->access$getOnLinkOpen$p(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
