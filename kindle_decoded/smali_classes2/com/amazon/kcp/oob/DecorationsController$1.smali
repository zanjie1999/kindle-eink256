.class Lcom/amazon/kcp/oob/DecorationsController$1;
.super Ljava/lang/Object;
.source "DecorationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/DecorationsController;->onRefreshLibraryDecorationEvent(Lcom/amazon/kindle/krx/ui/RefreshLibraryDecorationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/DecorationsController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/DecorationsController;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/oob/DecorationsController$1;->this$0:Lcom/amazon/kcp/oob/DecorationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/oob/DecorationsController$1;->this$0:Lcom/amazon/kcp/oob/DecorationsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/DecorationsController;->refreshDecorations()V

    return-void
.end method
