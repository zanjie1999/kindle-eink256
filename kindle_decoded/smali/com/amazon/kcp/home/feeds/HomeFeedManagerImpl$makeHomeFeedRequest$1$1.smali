.class final Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFeedManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kcp/home/models/voltron/SidekickResponse;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1$1;->invoke(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;

    iget-object v0, v0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->$responseHandler:Lcom/amazon/kcp/home/feeds/FeedResponseHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/home/feeds/FeedResponseHandler;->onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    :cond_0
    return-void
.end method
