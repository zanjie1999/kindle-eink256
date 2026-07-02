.class public final Lcom/amazon/kcp/application/sync/internal/SyncParameters;
.super Ljava/lang/Object;
.source "SyncParameters.kt"


# instance fields
.field private asin:Ljava/lang/String;

.field private final bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

.field private final deadline:Ljava/util/Date;

.field private isSample:Z

.field private result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

.field private final statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field private final syncFinishCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

.field private final type:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncResult;Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iput-object p2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    iput-object p3, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->asin:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample:Z

    iput-object p5, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    iput-object p6, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    iput-object p7, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    iput-object p8, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->syncFinishCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncResult;Lcom/amazon/foundation/internal/IBooleanCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 19
    sget-object v7, Lcom/amazon/kcp/application/sync/internal/SyncResult;->NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const-string v8, "SyncResult.NOT_STARTED"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v2, p8

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v2

    .line 20
    invoke-direct/range {p2 .. p10}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncResult;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 7

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 12

    move-object v11, p0

    const-string/jumbo v0, "type"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x4c

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    .line 33
    invoke-direct/range {v0 .. v10}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncResult;Lcom/amazon/foundation/internal/IBooleanCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_0

    .line 35
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->asin:Ljava/lang/String;

    .line 36
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v0

    iput-boolean v0, v11, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 12

    const-string/jumbo v0, "type"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    .line 63
    invoke-direct/range {v1 .. v11}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncResult;Lcom/amazon/foundation/internal/IBooleanCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    iget-object v1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->asin:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    iget-object v1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    iget-object v1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    iget-object v1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->syncFinishCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    iget-object p1, p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->syncFinishCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

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

.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    return-object v0
.end method

.method public final getDeadline()Ljava/util/Date;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    return-object v0
.end method

.method public final getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    return-object v0
.end method

.method public final getStatusTracker()Lcom/amazon/kindle/services/download/IStatusTracker;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    return-object v0
.end method

.method public final getSyncFinishCallback()Lcom/amazon/foundation/internal/IBooleanCallback;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->syncFinishCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    return-object v0
.end method

.method public final getType()Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->asin:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->syncFinishCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSample()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample:Z

    return v0
.end method

.method public final setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncParameters(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->type:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bookInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->bookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->deadline:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->result:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncFinishCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->syncFinishCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
