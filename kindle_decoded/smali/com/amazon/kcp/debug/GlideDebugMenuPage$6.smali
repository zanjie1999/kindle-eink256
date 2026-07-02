.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeBorrowOfferButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 229
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$300(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v3

    .line 230
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$500(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    if-ne p1, v0, :cond_0

    .line 234
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v1

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;)V

    const-string/jumbo v5, "test_ref_tag"

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/store/IStoreManager;->borrowOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "this is not a borrow offer"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
