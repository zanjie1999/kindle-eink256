.class Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$1;
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

    .line 457
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$1;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 460
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->toggleMetricsServiceDebugLoggingEnabled()V

    .line 461
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$1;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->access$300(Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Search for MetricsManager string in logcat to look for metrics reported."

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 462
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
