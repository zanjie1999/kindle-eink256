.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final error:Ljava/lang/Throwable;

.field public final state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    .line 18
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 26
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;

    .line 28
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 29
    :cond_3
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->error:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 30
    :cond_5
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    if-ne v2, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
