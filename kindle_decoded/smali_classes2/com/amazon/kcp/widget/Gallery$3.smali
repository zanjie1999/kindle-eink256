.class Lcom/amazon/kcp/widget/Gallery$3;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/widget/Gallery;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery$3;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$3;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-static {v0}, Lcom/amazon/kcp/widget/Gallery;->access$400(Lcom/amazon/kcp/widget/Gallery;)V

    return-void
.end method
