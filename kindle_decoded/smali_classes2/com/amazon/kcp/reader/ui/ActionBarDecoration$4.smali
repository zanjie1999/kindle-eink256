.class Lcom/amazon/kcp/reader/ui/ActionBarDecoration$4;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setupDecoration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$4;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$4;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateDecorationDecorators(ZZ)Z

    return-void
.end method
