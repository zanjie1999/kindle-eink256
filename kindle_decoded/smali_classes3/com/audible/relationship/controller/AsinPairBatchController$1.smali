.class Lcom/audible/relationship/controller/AsinPairBatchController$1;
.super Ljava/lang/Object;
.source "AsinPairBatchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/relationship/controller/AsinPairBatchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/relationship/controller/AsinPairBatchController;


# direct methods
.method constructor <init>(Lcom/audible/relationship/controller/AsinPairBatchController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/audible/relationship/controller/AsinPairBatchController$1;->this$0:Lcom/audible/relationship/controller/AsinPairBatchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinPairBatchController$1;->this$0:Lcom/audible/relationship/controller/AsinPairBatchController;

    invoke-static {v0}, Lcom/audible/relationship/controller/AsinPairBatchController;->access$000(Lcom/audible/relationship/controller/AsinPairBatchController;)V

    return-void
.end method
