.class final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;
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
.field final synthetic $debugButton:Lcom/amazon/kcp/debug/DebugToggleButton;

.field final synthetic this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Lcom/amazon/kcp/debug/DebugToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->$debugButton:Lcom/amazon/kcp/debug/DebugToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->$debugButton:Lcom/amazon/kcp/debug/DebugToggleButton;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/debug/DebugToggleButton;->setChecked(Z)V

    .line 44
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->$debugButton:Lcom/amazon/kcp/debug/DebugToggleButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DebugToggleButton;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->$debugButton:Lcom/amazon/kcp/debug/DebugToggleButton;

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/DebugToggleButton;->getDebugClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->$debugButton:Lcom/amazon/kcp/debug/DebugToggleButton;

    invoke-virtual {v2}, Lcom/amazon/kcp/debug/DebugToggleButton;->getDebugFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setFeatureStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$getView$1;->$debugButton:Lcom/amazon/kcp/debug/DebugToggleButton;

    invoke-virtual {p2}, Lcom/amazon/kcp/debug/DebugToggleButton;->getToastMsg()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
