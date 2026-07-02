.class final Lcom/amazon/kcp/debug/StrictModeDebugPageProvider$getView$1;
.super Ljava/lang/Object;
.source "StrictModeDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/StrictModeDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/amazon/kcp/debug/StrictModeDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugUtils;->toggleUnsuppressedViolationStackTrace(Landroid/content/Context;)V

    .line 30
    iget-object p1, p0, Lcom/amazon/kcp/debug/StrictModeDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/StrictModeDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "Show"

    goto :goto_0

    :cond_0
    const-string p2, "Hide"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " stack trace of unsuppressed violations"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
