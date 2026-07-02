.class final Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$4;
.super Ljava/lang/Object;
.source "PairingBottomSheet.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$4;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$4;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;->access$getOnDismiss$p(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet$setContentView$4;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
