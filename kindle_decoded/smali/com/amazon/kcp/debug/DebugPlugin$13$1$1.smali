.class Lcom/amazon/kcp/debug/DebugPlugin$13$1$1;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$13$1;->configureKfcShareUxOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/debug/DebugPlugin$13$1;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$13$1;Landroid/widget/CheckBox;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$13$1$1;->this$2:Lcom/amazon/kcp/debug/DebugPlugin$13$1;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugPlugin$13$1$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 258
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$13$1$1;->this$2:Lcom/amazon/kcp/debug/DebugPlugin$13$1;

    iget-object p1, p1, Lcom/amazon/kcp/debug/DebugPlugin$13$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$13$1$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->setNewKfcShareUxEnabled(Landroid/content/Context;Z)V

    .line 259
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$13$1$1;->this$2:Lcom/amazon/kcp/debug/DebugPlugin$13$1;

    iget-object p1, p1, Lcom/amazon/kcp/debug/DebugPlugin$13$1;->val$context:Landroid/content/Context;

    const-string v0, "Restart the app for changes to take effect"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
