.class Lcom/amazon/kcp/widget/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/widget/Gallery;
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

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery$1;->this$0:Lcom/amazon/kcp/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$1;->this$0:Lcom/amazon/kcp/widget/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/widget/Gallery;->access$002(Lcom/amazon/kcp/widget/Gallery;Z)Z

    return-void
.end method
