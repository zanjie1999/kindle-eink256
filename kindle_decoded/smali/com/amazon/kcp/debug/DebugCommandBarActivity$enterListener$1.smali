.class final Lcom/amazon/kcp/debug/DebugCommandBarActivity$enterListener$1;
.super Ljava/lang/Object;
.source "DebugCommandBarActivity.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugCommandBarActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugCommandBarActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugCommandBarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity$enterListener$1;->this$0:Lcom/amazon/kcp/debug/DebugCommandBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "keyEvent"

    .line 32
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    .line 33
    iget-object p2, p0, Lcom/amazon/kcp/debug/DebugCommandBarActivity$enterListener$1;->this$0:Lcom/amazon/kcp/debug/DebugCommandBarActivity;

    const-string/jumbo p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/debug/DebugCommandBarActivity;->updateTheThings(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
