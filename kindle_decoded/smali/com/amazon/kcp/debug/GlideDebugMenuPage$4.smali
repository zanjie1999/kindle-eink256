.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeShowOfferButton(Landroid/view/ViewGroup;)V
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

    .line 180
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$300(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Landroid/view/ViewGroup;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$4;->val$viewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/krl/R$id;->details:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
