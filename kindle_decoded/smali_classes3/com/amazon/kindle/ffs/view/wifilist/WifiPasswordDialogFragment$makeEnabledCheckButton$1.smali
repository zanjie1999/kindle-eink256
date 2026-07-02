.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;
.super Ljava/lang/Object;
.source "WifiPasswordDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->makeEnabledCheckButton(Landroid/view/View;ILjava/lang/Integer;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $contentDescription:Ljava/lang/String;

.field final synthetic $imageButton:Landroid/widget/ImageButton;

.field final synthetic $onToggle:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Landroid/widget/ImageButton;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$imageButton:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$contentDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$onToggle:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    .line 262
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$imageButton:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$imageButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->access$updateCheckButtonImage(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Landroid/widget/ImageButton;)V

    .line 266
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$imageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$contentDescription:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->access$getCheckButtonContentDescription(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;->$onToggle:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 262
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
