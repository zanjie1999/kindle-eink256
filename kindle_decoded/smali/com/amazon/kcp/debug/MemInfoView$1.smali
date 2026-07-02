.class Lcom/amazon/kcp/debug/MemInfoView$1;
.super Ljava/lang/Object;
.source "MemInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/MemInfoView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/MemInfoView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/MemInfoView;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/debug/MemInfoView$1;->this$0:Lcom/amazon/kcp/debug/MemInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/amazon/kcp/debug/MemInfoView$1;->this$0:Lcom/amazon/kcp/debug/MemInfoView;

    invoke-static {p1}, Lcom/amazon/kcp/debug/MemInfoView;->access$000(Lcom/amazon/kcp/debug/MemInfoView;)V

    return-void
.end method
