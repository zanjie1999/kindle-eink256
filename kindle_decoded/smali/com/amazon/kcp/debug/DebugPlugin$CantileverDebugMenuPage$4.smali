.class Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->configureIntentOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

.field final synthetic val$asin:Landroid/widget/EditText;

.field final synthetic val$orderId:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;->val$asin:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;->val$orderId:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 787
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->getHelpAndFeedbackActivityIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "cantileverMode"

    const-string v1, "RETURN"

    .line 789
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;->val$asin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asin"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;->val$orderId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "orderId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$4;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->access$700(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
