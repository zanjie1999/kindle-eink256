.class Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$2;
.super Ljava/lang/Object;
.source "BaseTicrDocViewerEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$2;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$2;->this$0:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$300(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Z)V

    return-void
.end method
