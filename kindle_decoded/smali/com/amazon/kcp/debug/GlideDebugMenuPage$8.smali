.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeGetOfferButton(Landroid/view/ViewGroup;)V
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

    .line 358
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 361
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->val$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->client_id:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$700(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 367
    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {v1, v0, p1, v2}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$800(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$8;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {v1, v0, p1, v2}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$900(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method
