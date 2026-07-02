.class public Lcom/amazon/kindle/event/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EventId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blocking:Z

.field private final eventId:I

.field private payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final type:Lcom/amazon/kindle/event/EventType;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/event/Event;->EventId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/event/EventType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/amazon/kindle/event/EventType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/amazon/kindle/event/EventType;",
            "Z)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/amazon/kindle/event/Event;->blocking:Z

    .line 82
    sget-object v0, Lcom/amazon/kindle/event/Event;->EventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/event/Event;->eventId:I

    .line 83
    iput-object p2, p0, Lcom/amazon/kindle/event/Event;->payload:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lcom/amazon/kindle/event/Event;->type:Lcom/amazon/kindle/event/EventType;

    .line 85
    iput-boolean p4, p0, Lcom/amazon/kindle/event/Event;->blocking:Z

    .line 86
    iput-object p1, p0, Lcom/amazon/kindle/event/Event;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Lcom/amazon/kindle/event/Event;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 141
    check-cast p1, Lcom/amazon/kindle/event/Event;

    .line 142
    iget v1, p0, Lcom/amazon/kindle/event/Event;->eventId:I

    iget p1, p1, Lcom/amazon/kindle/event/Event;->eventId:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getId()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/amazon/kindle/event/Event;->eventId:I

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/event/Event;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/event/EventType;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/event/Event;->type:Lcom/amazon/kindle/event/EventType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/event/Event;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/amazon/kindle/event/Event;->eventId:I

    add-int/lit16 v0, v0, 0x353

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/amazon/kindle/event/Event;->blocking:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/event/Event;->type:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {v1}, Lcom/amazon/kindle/event/EventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/event/Event;->eventId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
