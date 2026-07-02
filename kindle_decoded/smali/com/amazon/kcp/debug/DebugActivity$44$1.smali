.class Lcom/amazon/kcp/debug/DebugActivity$44$1;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/debug/DebugActivity$44;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity$44;)V
    .locals 0

    .line 2506
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$44$1;->this$1:Lcom/amazon/kcp/debug/DebugActivity$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2508
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$44$1;->this$1:Lcom/amazon/kcp/debug/DebugActivity$44;

    iget-object v0, v0, Lcom/amazon/kcp/debug/DebugActivity$44;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->dump_heap:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
