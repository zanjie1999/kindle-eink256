.class final Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;
.super Ljava/lang/Object;
.source "StoreDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;->this$0:Lcom/amazon/kcp/debug/StoreDebugPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;->$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 47
    iget-object p1, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;->$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->store_domain_override_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "viewGroup.findViewById<E\u2026domain_override_edittext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;->this$0:Lcom/amazon/kcp/debug/StoreDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/StoreDebugPageProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/debug/DebugUtils;->setStoreDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/debug/StoreDebugPageProvider$getView$2;->this$0:Lcom/amazon/kcp/debug/StoreDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/StoreDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/StoreDebugPageProvider;)Landroid/content/Context;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store domain overridden to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Reload store to avoid any transient issues."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 49
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
