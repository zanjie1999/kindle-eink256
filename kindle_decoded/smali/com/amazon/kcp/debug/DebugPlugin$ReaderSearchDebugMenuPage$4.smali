.class Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$4;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureTopSearchWidgetButton(Landroid/view/ViewGroup;)V
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

    .line 570
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$4;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 573
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$4;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->access$400(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugUtils;->toggleTopSearchWidgetEnabled(Landroid/content/Context;)V

    return-void
.end method
