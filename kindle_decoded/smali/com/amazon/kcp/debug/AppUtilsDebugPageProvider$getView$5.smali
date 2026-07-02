.class final Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$5;
.super Ljava/lang/Object;
.source "AppUtilsDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$5;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$5;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugUtils;->toggleDarkModePhaseOne(Landroid/content/Context;)V

    .line 63
    iget-object p1, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$5;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dark Mode Phase One is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "enabled"

    goto :goto_0

    :cond_0
    const-string p2, "disabled"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
