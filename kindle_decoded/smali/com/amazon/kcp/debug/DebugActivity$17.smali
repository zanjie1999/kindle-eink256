.class Lcom/amazon/kcp/debug/DebugActivity$17;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->initializeTutorialOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$lockButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$17;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$17;->val$lockButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 658
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areTutorialsEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 659
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$17;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-static {v0, p1}, Lcom/amazon/kcp/debug/DebugUtils;->setTutorialsEnabled(Landroid/content/Context;Z)V

    .line 660
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$17;->val$lockButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "Lock"

    goto :goto_0

    :cond_0
    const-string p1, "Unlock"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Tutorials"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
