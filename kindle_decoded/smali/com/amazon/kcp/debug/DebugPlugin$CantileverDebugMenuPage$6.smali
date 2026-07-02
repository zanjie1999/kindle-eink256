.class Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$6;
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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 809
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->getHelpAndFeedbackActivityIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->access$700(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
