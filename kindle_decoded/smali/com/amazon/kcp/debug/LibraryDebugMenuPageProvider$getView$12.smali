.class final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$12;
.super Ljava/lang/Object;
.source "LibraryDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$12;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$12;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setWayfinderStoreSearchAsYouTypeRemoval(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$12;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p2}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Restart the app for this to take effect."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$12;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p2}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Disabling weblab overwrite for search as you type removal."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
