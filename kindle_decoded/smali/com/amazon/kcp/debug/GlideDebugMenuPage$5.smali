.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->initializeCorruptOfferButton(Landroid/view/ViewGroup;)V
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

    .line 197
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 200
    iget-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;->val$viewGroup:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->offers_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 201
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$400(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    .line 203
    new-instance v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;-><init>()V

    .line 204
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCsrfToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCsrfToken(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getOfferId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setOfferId(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionType(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->isConditional()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setConditional(Z)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setPrice(Ljava/math/BigDecimal;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCurrency(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getDisplayablePrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setDisplayablePrice(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->build()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    invoke-static {v1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$400(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$5;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IS CORRUPTED"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
