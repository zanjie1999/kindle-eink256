.class public final Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;
.super Ljava/lang/Object;
.source "ModelChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;
    }
.end annotation


# instance fields
.field private final property:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->property:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 95
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->property:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isPropertyOneOf(Ljava/util/EnumSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->property:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelChangedEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->property:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
