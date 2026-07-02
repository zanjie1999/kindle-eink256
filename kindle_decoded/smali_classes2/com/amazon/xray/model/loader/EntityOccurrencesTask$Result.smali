.class public Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;
.super Ljava/lang/Object;
.source "EntityOccurrencesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/EntityOccurrencesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final groupedOccurrences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;>;"
        }
    .end annotation
.end field

.field private final occurrences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final readingRange:Lcom/amazon/xray/model/object/PositionRange;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/amazon/xray/model/object/PositionRange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;>;",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 93
    invoke-static {v0}, Lcom/amazon/xray/util/Validate;->notNull([Ljava/lang/Object;)V

    .line 95
    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->occurrences:Ljava/util/List;

    .line 96
    iput-object p2, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->groupedOccurrences:Ljava/util/List;

    .line 97
    iput-object p3, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->readingRange:Lcom/amazon/xray/model/object/PositionRange;

    return-void
.end method


# virtual methods
.method public getGroupedOccurrences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->groupedOccurrences:Ljava/util/List;

    return-object v0
.end method

.method public getOccurrences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->occurrences:Ljava/util/List;

    return-object v0
.end method

.method public getReadingRange()Lcom/amazon/xray/model/object/PositionRange;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;->readingRange:Lcom/amazon/xray/model/object/PositionRange;

    return-object v0
.end method
