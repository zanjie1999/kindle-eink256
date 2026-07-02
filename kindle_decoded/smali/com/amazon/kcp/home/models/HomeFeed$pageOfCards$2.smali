.class final Lcom/amazon/kcp/home/models/HomeFeed$pageOfCards$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeModels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/models/HomeFeed;-><init>(JJLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/home/model/CardData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/models/HomeFeed;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/models/HomeFeed;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/models/HomeFeed$pageOfCards$2;->this$0:Lcom/amazon/kcp/home/models/HomeFeed;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/HomeFeed$pageOfCards$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/home/models/HomeFeed$pageOfCards$2;->this$0:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-static {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->access$getCards$p(Lcom/amazon/kcp/home/models/HomeFeed;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/CardRotator;->pageOfCards(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
