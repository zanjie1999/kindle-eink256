.class Lcom/amazon/kcp/debug/DebugActivity$15;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$15;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 618
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 619
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$15;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    const-string v1, "com.amazon.ea.debug.AnyActionsDebugActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$15;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
