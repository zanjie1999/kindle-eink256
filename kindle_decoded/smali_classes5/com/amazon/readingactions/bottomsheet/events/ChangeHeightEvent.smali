.class public final Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;
.super Ljava/lang/Object;
.source "ChangeHeightEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final height:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 13
    :cond_0
    const-class v1, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_4

    .line 15
    check-cast p1, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;

    .line 17
    iget v1, p0, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;->height:I

    iget p1, p1, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;->height:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0

    .line 15
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.amazon.readingactions.bottomsheet.events.ChangeHeightEvent"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getHeight()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;->height:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeHeightEvent(height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
