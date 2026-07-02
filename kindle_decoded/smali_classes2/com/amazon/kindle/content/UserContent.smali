.class public Lcom/amazon/kindle/content/UserContent;
.super Ljava/lang/Object;
.source "UserContent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field clippingBalance:J

.field crp:Ljava/lang/String;

.field furthestPositionRead:I

.field isInCarousel:Z

.field lastAccessTime:J

.field lastReadPosition:I

.field mltLastUpdated:J

.field mrpr:Ljava/lang/String;

.field readingProgress:I

.field tags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userId:Ljava/lang/String;

.field waypoints:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15

    const/4 v9, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    .line 58
    invoke-direct/range {v0 .. v14}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/amazon/kindle/content/UserContent;->readingProgress:I

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/content/UserContent;->userId:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Lcom/amazon/kindle/content/UserContent;->lastAccessTime:J

    .line 71
    iput p4, p0, Lcom/amazon/kindle/content/UserContent;->lastReadPosition:I

    .line 72
    iput p5, p0, Lcom/amazon/kindle/content/UserContent;->furthestPositionRead:I

    .line 73
    iput p6, p0, Lcom/amazon/kindle/content/UserContent;->readingProgress:I

    .line 74
    iput-wide p7, p0, Lcom/amazon/kindle/content/UserContent;->mltLastUpdated:J

    .line 75
    iput-boolean p9, p0, Lcom/amazon/kindle/content/UserContent;->isInCarousel:Z

    .line 76
    iput-object p10, p0, Lcom/amazon/kindle/content/UserContent;->mrpr:Ljava/lang/String;

    .line 77
    iput-object p11, p0, Lcom/amazon/kindle/content/UserContent;->crp:Ljava/lang/String;

    .line 78
    iput-object p12, p0, Lcom/amazon/kindle/content/UserContent;->waypoints:Ljava/lang/String;

    .line 79
    iput-wide p13, p0, Lcom/amazon/kindle/content/UserContent;->clippingBalance:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 15

    .line 98
    new-instance v14, Lcom/amazon/kindle/content/UserContent;

    iget-object v1, p0, Lcom/amazon/kindle/content/UserContent;->userId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/amazon/kindle/content/UserContent;->lastAccessTime:J

    iget v4, p0, Lcom/amazon/kindle/content/UserContent;->lastReadPosition:I

    iget v5, p0, Lcom/amazon/kindle/content/UserContent;->furthestPositionRead:I

    iget v6, p0, Lcom/amazon/kindle/content/UserContent;->readingProgress:I

    iget-wide v7, p0, Lcom/amazon/kindle/content/UserContent;->mltLastUpdated:J

    iget-object v9, p0, Lcom/amazon/kindle/content/UserContent;->mrpr:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/kindle/content/UserContent;->crp:Ljava/lang/String;

    iget-object v11, p0, Lcom/amazon/kindle/content/UserContent;->waypoints:Ljava/lang/String;

    iget-wide v12, p0, Lcom/amazon/kindle/content/UserContent;->clippingBalance:J

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v14
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "{userId="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/UserContent;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",lastAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/amazon/kindle/content/UserContent;->lastAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ",lastReadLocation="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/amazon/kindle/content/UserContent;->lastReadPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",furthestPositionRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/amazon/kindle/content/UserContent;->furthestPositionRead:I

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",readingProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/amazon/kindle/content/UserContent;->readingProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",mltLastUpdated="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/amazon/kindle/content/UserContent;->mltLastUpdated:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ",isInCarousel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/amazon/kindle/content/UserContent;->isInCarousel:Z

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ",mrpr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/UserContent;->mrpr:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",crp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/UserContent;->crp:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",waypoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kindle/content/UserContent;->waypoints:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",clippingBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/amazon/kindle/content/UserContent;->clippingBalance:J

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
