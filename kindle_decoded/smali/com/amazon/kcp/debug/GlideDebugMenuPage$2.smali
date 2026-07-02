.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeReturnAsinButton(Landroid/view/ViewGroup;)V
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

    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;->val$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->get_offers_asin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;->val$viewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/krl/R$id;->client_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;)V

    const-string/jumbo v3, "test_ref_tag"

    invoke-interface {v1, p1, v0, v3, v2}, Lcom/amazon/kindle/krx/store/IStoreManager;->returnAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    return-void
.end method
