.class final Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$4;
.super Ljava/lang/Object;
.source "AppUtilsDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$4;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$4;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.amazon.appexpan.client.debug.DebugSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$4;->this$0:Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
