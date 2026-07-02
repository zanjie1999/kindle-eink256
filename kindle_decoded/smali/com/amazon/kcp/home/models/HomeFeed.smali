.class public final Lcom/amazon/kcp/home/models/HomeFeed;
.super Ljava/lang/Object;
.source "HomeModels.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/models/HomeFeed$State;,
        Lcom/amazon/kcp/home/models/HomeFeed$Companion;
    }
.end annotation


# static fields
.field public static final EMPTY_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

.field public static final UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;


# instance fields
.field private final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation
.end field

.field private final expiryTime:J

.field private final pageOfCards$delegate:Lkotlin/Lazy;

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/amazon/kcp/home/models/HomeFeed$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/models/HomeFeed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    new-instance v0, Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/home/models/HomeFeed;-><init>(JJLjava/util/List;)V

    sput-object v0, Lcom/amazon/kcp/home/models/HomeFeed;->EMPTY_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    .line 43
    new-instance v0, Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/amazon/kcp/home/models/HomeFeed;-><init>(JJLjava/util/List;)V

    sput-object v0, Lcom/amazon/kcp/home/models/HomeFeed;->UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    return-void
.end method

.method public constructor <init>(JJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazon/kcp/home/models/HomeFeed;->timestamp:J

    iput-wide p3, p0, Lcom/amazon/kcp/home/models/HomeFeed;->expiryTime:J

    iput-object p5, p0, Lcom/amazon/kcp/home/models/HomeFeed;->cards:Ljava/util/List;

    .line 20
    new-instance p1, Lcom/amazon/kcp/home/models/HomeFeed$pageOfCards$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/models/HomeFeed$pageOfCards$2;-><init>(Lcom/amazon/kcp/home/models/HomeFeed;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/models/HomeFeed;->pageOfCards$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCards$p(Lcom/amazon/kcp/home/models/HomeFeed;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->cards:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/home/models/HomeFeed;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/models/HomeFeed;

    iget-wide v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->timestamp:J

    iget-wide v2, p1, Lcom/amazon/kcp/home/models/HomeFeed;->timestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->expiryTime:J

    iget-wide v2, p1, Lcom/amazon/kcp/home/models/HomeFeed;->expiryTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->cards:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/kcp/home/models/HomeFeed;->cards:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getExpiryTime()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->expiryTime:J

    return-wide v0
.end method

.method public final getPageOfCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->pageOfCards$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getState()Lcom/amazon/kcp/home/models/HomeFeed$State;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed;->EMPTY_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed$State;->EMPTY:Lcom/amazon/kcp/home/models/HomeFeed$State;

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed;->UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed$State;->UNINITIALIZED:Lcom/amazon/kcp/home/models/HomeFeed$State;

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/amazon/kcp/home/models/HomeFeed$State;->NON_EMPTY:Lcom/amazon/kcp/home/models/HomeFeed$State;

    :goto_0
    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->timestamp:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/amazon/kcp/home/models/HomeFeed;->expiryTime:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->cards:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final isExpired()Z
    .locals 5

    .line 34
    iget-wide v0, p0, Lcom/amazon/kcp/home/models/HomeFeed;->expiryTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFeed(timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/home/models/HomeFeed;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expiryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/home/models/HomeFeed;->expiryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cards="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/HomeFeed;->cards:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
