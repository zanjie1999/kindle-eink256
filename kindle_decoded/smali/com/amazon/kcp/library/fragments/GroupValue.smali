.class public final Lcom/amazon/kcp/library/fragments/GroupValue;
.super Ljava/lang/Object;
.source "LargeLibraryRecyclerAdapterHelper.kt"


# instance fields
.field private final count:J

.field private final itemId:Lcom/amazon/kindle/observablemodel/ItemID;

.field private final representativeId:Lcom/amazon/kindle/observablemodel/ItemID;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ItemID;J)V
    .locals 1

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "representativeId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-wide p3, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->count:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/fragments/GroupValue;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/fragments/GroupValue;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    iget-object v1, p1, Lcom/amazon/kcp/library/fragments/GroupValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    iget-object v1, p1, Lcom/amazon/kcp/library/fragments/GroupValue;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->count:J

    iget-wide v2, p1, Lcom/amazon/kcp/library/fragments/GroupValue;->count:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCount()J
    .locals 2

    .line 433
    iget-wide v0, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->count:J

    return-wide v0
.end method

.method public final getRepresentativeId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/observablemodel/ItemID;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->count:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupValue(itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->itemId:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", representativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->representativeId:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/library/fragments/GroupValue;->count:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
