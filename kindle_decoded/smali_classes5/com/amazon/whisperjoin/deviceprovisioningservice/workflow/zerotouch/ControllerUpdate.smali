.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;
.super Ljava/lang/Object;
.source "ControllerUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;
    }
.end annotation


# instance fields
.field private final mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

.field private final mMessage:Ljava/lang/String;

.field private final mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const-string p1, ""

    .line 32
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 26
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    .line 39
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mThrowable:Ljava/lang/Throwable;

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

    if-eqz p1, :cond_3

    .line 58
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;

    .line 60
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    .line 61
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mThrowable:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mThrowable:Ljava/lang/Throwable;

    .line 62
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEvent()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mThrowable:Ljava/lang/Throwable;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update{mEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mThrowable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
