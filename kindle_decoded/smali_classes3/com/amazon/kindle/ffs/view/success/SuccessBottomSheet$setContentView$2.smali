.class final Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$2;
.super Ljava/lang/Object;
.source "SuccessBottomSheet.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$2;->this$0:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$2;->this$0:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->access$getOnDismiss$p(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$2;->this$0:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
