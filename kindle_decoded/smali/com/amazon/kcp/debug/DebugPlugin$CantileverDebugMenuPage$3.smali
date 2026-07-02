.class Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$3;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->configureEndpointOverrideViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

.field final synthetic val$endpointOverrideField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;Landroid/widget/EditText;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$3;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$3;->val$endpointOverrideField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 773
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$3;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;->access$700(Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage$3;->val$endpointOverrideField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->setCantileverEndpointOverride(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
