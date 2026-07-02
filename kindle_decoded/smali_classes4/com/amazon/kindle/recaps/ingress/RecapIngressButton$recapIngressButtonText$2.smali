.class final Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$recapIngressButtonText$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecapIngressButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$recapIngressButtonText$2;->this$0:Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$recapIngressButtonText$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$recapIngressButtonText$2;->this$0:Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->access$getSdk$p(Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/recaps/R$string;->kre_recaps_read_recap_panel_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$recapIngressButtonText$2;->this$0:Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;

    invoke-static {v0}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->access$getSdk$p(Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/recaps/R$string;->kre_recaps_recap_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
