.class Lcom/amazon/kcp/debug/DebugActivity$45;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->addButton(Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$button:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V
    .locals 0

    .line 2829
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$45;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$45;->val$button:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2832
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$45;->val$button:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/DebugActivity$DebugButton;->onClick()V

    return-void
.end method
