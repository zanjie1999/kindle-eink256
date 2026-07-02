.class final Lcom/amazon/kcp/home/models/voltron/VoltronResponse$data$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VoltronModels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/models/voltron/VoltronResponse;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/home/models/voltron/DataBlock<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/models/voltron/VoltronResponse;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/models/voltron/VoltronResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$data$2;->this$0:Lcom/amazon/kcp/home/models/voltron/VoltronResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/home/models/voltron/DataBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/home/models/voltron/DataBlock<",
            "TV;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$data$2;->this$0:Lcom/amazon/kcp/home/models/voltron/VoltronResponse;

    const-string v1, "data"

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->access$blockForName(Lcom/amazon/kcp/home/models/voltron/VoltronResponse;Ljava/lang/String;)Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kcp/home/models/voltron/DataBlock;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/amazon/kcp/home/models/voltron/DataBlock;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$data$2;->invoke()Lcom/amazon/kcp/home/models/voltron/DataBlock;

    move-result-object v0

    return-object v0
.end method
