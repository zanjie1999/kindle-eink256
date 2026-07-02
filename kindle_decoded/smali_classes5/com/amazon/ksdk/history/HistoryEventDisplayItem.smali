.class public final Lcom/amazon/ksdk/history/HistoryEventDisplayItem;
.super Ljava/lang/Object;
.source "HistoryEventDisplayItem.java"


# instance fields
.field final mAsin:Ljava/lang/String;

.field final mAuthor:Ljava/lang/String;

.field final mEventType:Lcom/amazon/ksdk/history/HistoryEventType;

.field final mId:Ljava/lang/String;

.field final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/ksdk/history/HistoryEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mEventType:Lcom/amazon/ksdk/history/HistoryEventType;

    .line 27
    iput-object p3, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mTitle:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mAuthor:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mAsin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Lcom/amazon/ksdk/history/HistoryEventType;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mEventType:Lcom/amazon/ksdk/history/HistoryEventType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryEventDisplayItem{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mEventType:Lcom/amazon/ksdk/history/HistoryEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/history/HistoryEventDisplayItem;->mAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
