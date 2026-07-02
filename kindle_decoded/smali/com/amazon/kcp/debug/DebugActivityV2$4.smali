.class Lcom/amazon/kcp/debug/DebugActivityV2$4;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DebugActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivityV2;->loadDefaultDebugMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivityV2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$4;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "App Info"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivityV2$4;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugActivityV2;->access$000(Lcom/amazon/kcp/debug/DebugActivityV2;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
