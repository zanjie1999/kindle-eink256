.class public final Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;
.super Ljava/lang/Object;
.source "RecapsLastReadPositionModel.kt"


# instance fields
.field private bookId:Ljava/lang/String;

.field private bookNextChapterStartPosition:Ljava/lang/Integer;

.field private hasNextChapter:Z

.field private recapLastReadChapterPosition:Ljava/lang/Integer;

.field private recapLastReadChapterTitle:Ljava/lang/String;

.field private recapNextChapterStartPosition:Ljava/lang/Integer;

.field private recapNextChapterTitle:Ljava/lang/String;

.field private recapsLastReadPageStartPosition:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    iput-object p2, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterPosition:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

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

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p4

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

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v2, p8

    :goto_6
    move-object p2, p0

    move p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v2

    .line 9
    invoke-direct/range {p2 .. p10}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;-><init>(ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    iget-boolean v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    iget-boolean v3, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterPosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterPosition:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    iget-object p1, p1, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getBookId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBookNextChapterStartPosition()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHasNextChapter()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    return v0
.end method

.method public final getRecapLastReadChapterTitle()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecapNextChapterStartPosition()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRecapNextChapterTitle()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecapsLastReadPageStartPosition()Ljava/lang/Long;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterPosition:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    return v0
.end method

.method public final invalidateModel()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterPosition:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    return-void
.end method

.method public final setBookId(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    return-void
.end method

.method public final setBookNextChapterStartPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    return-void
.end method

.method public final setHasNextChapter(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    return-void
.end method

.method public final setRecapLastReadChapterPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterPosition:Ljava/lang/Integer;

    return-void
.end method

.method public final setRecapLastReadChapterTitle(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    return-void
.end method

.method public final setRecapNextChapterStartPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    return-void
.end method

.method public final setRecapNextChapterTitle(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    return-void
.end method

.method public final setRecapsLastReadPageStartPosition(Ljava/lang/Long;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecapsLastReadPositionModel(hasNextChapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->hasNextChapter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recapLastReadChapterPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recapLastReadChapterTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapLastReadChapterTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recapNextChapterStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterStartPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recapNextChapterTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapNextChapterTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bookNextChapterStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookNextChapterStartPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recapsLastReadPageStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->recapsLastReadPageStartPosition:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
