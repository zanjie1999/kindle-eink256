.class final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$6;
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

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$6;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$6;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setPersonalLendingFilterEnabled(Landroid/content/Context;Z)V

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$6;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Sorry to see you go! Press back to return to the app."

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
