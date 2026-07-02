.class public final Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;
.super Ljava/lang/Object;
.source "EBookHushpuppyEnabledEvent.java"


# instance fields
.field private enabled:Z

.field private relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 29
    iput-boolean p2, p0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->enabled:Z

    return-void
.end method

.method public static newHushpuppyDisabledEvent()Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;
    .locals 3

    .line 52
    new-instance v0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;Z)V

    return-object v0
.end method

.method public static newHushpuppyEnabledEvent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;
    .locals 2

    .line 41
    new-instance v0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;Z)V

    return-object v0
.end method


# virtual methods
.method public getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->enabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EBookHushpuppyEnabledEvent{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
