.class final Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$configureLaunchActivityButton$1;
.super Ljava/lang/Object;
.source "InBookDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->configureLaunchActivityButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$configureLaunchActivityButton$1;->this$0:Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$configureLaunchActivityButton$1;->this$0:Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/debug/DebugCommandBarActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$configureLaunchActivityButton$1;->this$0:Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
