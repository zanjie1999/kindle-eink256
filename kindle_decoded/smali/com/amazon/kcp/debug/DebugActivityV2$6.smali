.class Lcom/amazon/kcp/debug/DebugActivityV2$6;
.super Ljava/lang/Object;
.source "DebugActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivityV2;->buildLegacyDebugMenu()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

.field final synthetic val$content:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivityV2;Landroid/content/Context;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$6;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivityV2$6;->val$content:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 205
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$6;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$6;->val$content:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 206
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$6;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
