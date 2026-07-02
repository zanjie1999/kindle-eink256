.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsOutcome.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;


# instance fields
.field private itemPosition:Ljava/lang/Integer;

.field private itemSectionPosition:Ljava/lang/Integer;

.field private itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

.field private itemValue:Ljava/lang/String;

.field private final outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

.field private final outcomeSequenceNum:I

.field private final searchId:Ljava/util/UUID;

.field private final searchSessionId:Ljava/util/UUID;

.field private final sectionShown:Ljava/lang/String;

.field private final totalStoreResults:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/lang/String;ILjava/lang/String;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "searchId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSessionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchSessionId:Ljava/util/UUID;

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    iput p4, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcomeSequenceNum:I

    iput-object p5, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->sectionShown:Ljava/lang/String;

    iput p6, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->totalStoreResults:I

    iput-object p7, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemValue:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    iput-object p9, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemPosition:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemSectionPosition:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/lang/String;ILjava/lang/String;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object/from16 v13, p10

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    .line 19
    invoke-direct/range {v3 .. v13}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/lang/String;ILjava/lang/String;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchSessionId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchSessionId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcomeSequenceNum:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcomeSequenceNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->sectionShown:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->sectionShown:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->totalStoreResults:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->totalStoreResults:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemValue:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemPosition:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemPosition:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemSectionPosition:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemSectionPosition:Ljava/lang/Integer;

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

.method public final getItemPosition()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getItemSectionPosition()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemSectionPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getItemType()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    return-object v0
.end method

.method public final getItemValue()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutcome()Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    return-object v0
.end method

.method public final getOutcomeSequenceNum()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcomeSequenceNum:I

    return v0
.end method

.method public final getSearchId()Ljava/util/UUID;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSearchSessionId()Ljava/util/UUID;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSectionShown()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->sectionShown:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalStoreResults()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->totalStoreResults:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchId:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchSessionId:Ljava/util/UUID;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcomeSequenceNum:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->sectionShown:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->totalStoreResults:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemValue:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemPosition:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemSectionPosition:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final setItemPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemPosition:Ljava/lang/Integer;

    return-void
.end method

.method public final setItemSectionPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemSectionPosition:Ljava/lang/Integer;

    return-void
.end method

.method public final setItemType(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    return-void
.end method

.method public final setItemValue(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAttemptMetricsOutcome(searchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->searchSessionId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outcome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcome:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outcomeSequenceNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->outcomeSequenceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sectionShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->sectionShown:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalStoreResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->totalStoreResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemSectionPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->itemSectionPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
