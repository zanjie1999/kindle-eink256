.class public Lcom/amazon/kindle/event/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# instance fields
.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/event/EventType;->type:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/amazon/kindle/event/EventType;->subtype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    check-cast p1, Lcom/amazon/kindle/event/EventType;

    .line 42
    iget-object v1, p0, Lcom/amazon/kindle/event/EventType;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/event/EventType;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/event/EventType;->subtype:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/event/EventType;->subtype:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/event/EventType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/event/EventType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/event/EventType;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/amazon/kindle/event/EventType;->subtype:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x25

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/event/EventType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/event/EventType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
