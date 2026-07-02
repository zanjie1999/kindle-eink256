.class Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$5;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureDiacriticsStrippingButton(Landroid/view/ViewGroup;)V
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

    .line 587
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$5;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 590
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$5;->this$0:Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->access$400(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setSearchDiacriticsStrippingEnabled(Landroid/content/Context;Z)V

    return-void
.end method
