.class public final Lcom/amazon/kcp/library/fragments/cache/CountValue;
.super Ljava/lang/Object;
.source "CountValueCache.kt"


# instance fields
.field private final isCU:Z

.field private final isKU:Z

.field private final isPrimeReading:Z

.field private final isRead:Z

.field private final itemId:Lcom/amazon/kindle/observablemodel/ItemID;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/ItemID;ZZZZ)V
    .locals 1

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    iput-boolean p3, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    iput-boolean p4, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    iput-boolean p5, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/observablemodel/ItemID;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/fragments/cache/CountValue;-><init>(Lcom/amazon/kindle/observablemodel/ItemID;ZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kcp/library/fragments/cache/CountValue;Lcom/amazon/kindle/observablemodel/ItemID;ZZZZILjava/lang/Object;)Lcom/amazon/kcp/library/fragments/cache/CountValue;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->copy(Lcom/amazon/kindle/observablemodel/ItemID;ZZZZ)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/amazon/kindle/observablemodel/ItemID;ZZZZ)Lcom/amazon/kcp/library/fragments/cache/CountValue;
    .locals 7

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/fragments/cache/CountValue;-><init>(Lcom/amazon/kindle/observablemodel/ItemID;ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    iget-object v1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    iget-boolean p1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getItemId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public final getOriginType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    if-eqz v0, :cond_0

    const-string v0, "Kindle Unlimited"

    goto :goto_0

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    if-eqz v0, :cond_1

    const-string v0, "Prime"

    goto :goto_0

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    if-eqz v0, :cond_2

    const-string v0, "ComicsUnlimited"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isCU()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    return v0
.end method

.method public final isKU()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    return v0
.end method

.method public final isPrimeReading()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    return v0
.end method

.method public final isRead()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    return v0
.end method

.method public final needsRefresh(Lcom/amazon/kcp/library/fragments/cache/CountValue;)Z
    .locals 2

    const-string/jumbo v0, "newValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    iget-boolean p1, p1, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountValue(itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isCU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isKU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPrimeReading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isPrimeReading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
