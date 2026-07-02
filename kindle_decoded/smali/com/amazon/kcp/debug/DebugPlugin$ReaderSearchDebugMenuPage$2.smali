.class Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$2;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureRecentSearchTermsButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 539
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->access$400(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugUtils;->toggleRecentSearchTermsEnabled(Landroid/content/Context;)V

    .line 540
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->access$400(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Restart the app for changes to take effect"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
