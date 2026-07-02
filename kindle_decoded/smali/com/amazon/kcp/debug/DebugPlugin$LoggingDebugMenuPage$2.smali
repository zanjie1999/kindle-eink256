.class Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$2;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->configureMetricServiceButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 477
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->access$300(Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugUtils;->toggleDebugToasts(Landroid/content/Context;)V

    .line 478
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->access$300(Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug Toasts turned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "off"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
