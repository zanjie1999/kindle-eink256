.class final Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider$getView$1;
.super Ljava/lang/Object;
.source "PaymentUtilsDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentUtilsDebugPageProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentUtilsDebugPageProvider.kt\ncom/amazon/kcp/debug/PaymentUtilsDebugPageProvider$getView$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 33
    sget-object p1, Lcom/amazon/kcp/payments/PlayBillingDebugUtils;->INSTANCE:Lcom/amazon/kcp/payments/PlayBillingDebugUtils;

    iget-object v0, p0, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/payments/PlayBillingDebugUtils;->setForceIphoneStore(Landroid/content/Context;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    iget-object p1, p0, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/PaymentUtilsDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force iPhone store is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "enabled"

    goto :goto_0

    :cond_0
    const-string p2, "disabled"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", restart app to avoid transient issues"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
