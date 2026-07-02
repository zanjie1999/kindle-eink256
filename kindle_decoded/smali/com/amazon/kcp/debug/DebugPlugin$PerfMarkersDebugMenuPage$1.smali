.class Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage$1;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;->configureLibraryItemMarkersOption(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;Landroid/widget/CheckBox;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage$1;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 704
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage$1;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;->access$600(Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->setLibraryItemPerfMarkersEnabled(Landroid/content/Context;Z)V

    return-void
.end method
