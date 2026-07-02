.class public Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;
.super Ljava/lang/Object;
.source "EntityExcerptsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/EntityExcerptsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final excerpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;"
        }
    .end annotation
.end field

.field private final readingRange:Lcom/amazon/xray/model/object/PositionRange;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/xray/model/object/PositionRange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 98
    invoke-static {v0}, Lcom/amazon/xray/util/Validate;->notNull([Ljava/lang/Object;)V

    .line 100
    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;->excerpts:Ljava/util/List;

    .line 101
    iput-object p2, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;->readingRange:Lcom/amazon/xray/model/object/PositionRange;

    return-void
.end method


# virtual methods
.method public getExcerpts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Excerpt;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;->excerpts:Ljava/util/List;

    return-object v0
.end method

.method public getReadingRange()Lcom/amazon/xray/model/object/PositionRange;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;->readingRange:Lcom/amazon/xray/model/object/PositionRange;

    return-object v0
.end method
