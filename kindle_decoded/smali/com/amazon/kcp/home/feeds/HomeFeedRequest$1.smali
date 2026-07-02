.class final Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFeedRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedRequest;-><init>(Lcom/amazon/kcp/application/Marketplace;Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;)V
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


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;->INSTANCE:Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p1, Lcom/amazon/kcp/home/models/voltron/SidekickResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;->invoke(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V
    .locals 0

    return-void
.end method
