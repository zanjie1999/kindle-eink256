.class Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;
.super Ljava/lang/Object;
.source "DefaultDebugMenuPageProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;->buildLegacyDebugMenu(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Landroid/content/Context;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .line 169
    iput-object p2, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;->val$content:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 172
    iget-object p1, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;->val$context:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;->val$content:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object p1, p0, Lcom/amazon/kcp/debug/DefaultDebugMenuPageProvider$5;->val$context:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
