.class final Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;
.super Ljava/lang/Object;
.source "StoreDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/StoreDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $viewGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/amazon/kcp/debug/StoreDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/StoreDebugPageProvider;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/StoreDebugPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/StoreDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/StoreDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setStoreDomainOverridden(Landroid/content/Context;Z)V

    .line 30
    iget-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->store_domain_override_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "viewGroup.findViewById<E\u2026domain_override_edittext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 31
    iget-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->store_domain_override_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "viewGroup.findViewById<B\u2026e_domain_override_button)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 32
    iget-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->store_weblabs_override_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "viewGroup.findViewById<E\u2026eblabs_override_edittext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 33
    iget-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->store_weblabs_override_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "viewGroup.findViewById<B\u2026_weblabs_override_button)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Store URL overridden to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->getStoreDomain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Reload store to avoid any transient issues."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Override removed. Reload store to avoid any transient issues."

    .line 40
    :goto_0
    iget-object p2, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/StoreDebugPageProvider;

    invoke-static {p2}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/StoreDebugPageProvider;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
