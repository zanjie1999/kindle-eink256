.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeCancelOfferButton(Landroid/view/ViewGroup;)V
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

    .line 77
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 80
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->val$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->get_offers_asin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->val$viewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/krl/R$id;->client_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->val$viewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/krl/R$id;->order_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->val$viewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/krl/R$id;->order_item_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v8, v0

    .line 87
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v10

    new-instance v11, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v12, "test_ref_tag"

    move-object v0, v10

    move-object v1, p1

    move-object v2, v7

    move-wide v3, v8

    move-object v5, v6

    move-object v6, v12

    move-object v7, v11

    invoke-interface/range {v0 .. v7}, Lcom/amazon/kindle/krx/store/IStoreManager;->returnOfferForAsin(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    return-void
.end method
