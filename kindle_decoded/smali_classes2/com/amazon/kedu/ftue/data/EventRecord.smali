.class public Lcom/amazon/kedu/ftue/data/EventRecord;
.super Ljava/lang/Object;
.source "EventRecord.java"


# instance fields
.field private count:J

.field private key:Ljava/lang/String;

.field private lastOccurred:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/Date;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/data/EventRecord;->setKey(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kedu/ftue/data/EventRecord;->setCount(J)V

    .line 31
    invoke-virtual {p0, p4}, Lcom/amazon/kedu/ftue/data/EventRecord;->setLastOccurred(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/amazon/kedu/ftue/data/EventRecord;->count:J

    return-wide v0
.end method

.method public getLastOccurred()Ljava/util/Date;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kedu/ftue/data/EventRecord;->lastOccurred:Ljava/util/Date;

    return-object v0
.end method

.method public setCount(J)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/amazon/kedu/ftue/data/EventRecord;->count:J

    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kedu/ftue/data/EventRecord;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastOccurred(Ljava/util/Date;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    :goto_0
    iput-object p1, p0, Lcom/amazon/kedu/ftue/data/EventRecord;->lastOccurred:Ljava/util/Date;

    return-void
.end method
