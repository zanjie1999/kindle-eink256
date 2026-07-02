.class final Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$3;
.super Ljava/lang/Object;
.source "AppCoreDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$3;->this$0:Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$3;->this$0:Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setSideloadPermissionChangesEnabled(Landroid/content/Context;Z)V

    .line 50
    iget-object p1, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$3;->this$0:Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sideload Permission Changes are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "enabled"

    goto :goto_0

    :cond_0
    const-string p2, "disabled"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", restart app to avoid transient issues"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
