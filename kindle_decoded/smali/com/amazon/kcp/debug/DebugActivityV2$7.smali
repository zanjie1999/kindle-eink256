.class Lcom/amazon/kcp/debug/DebugActivityV2$7;
.super Ljava/lang/Object;
.source "DebugActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivityV2;->buildAppInfoView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivityV2;Landroid/content/Context;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$7;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivityV2$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 227
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$7;->val$context:Landroid/content/Context;

    const-string v0, "Please open the link in a browser on your desktop."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
