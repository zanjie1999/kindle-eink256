.class public final Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;
.super Ljava/lang/Object;
.source "CompanionMappingModificationEvent.java"


# instance fields
.field private final fullSync:Z

.field private final modifications:Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;->modifications:Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    .line 34
    iput-boolean p2, p0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;->fullSync:Z

    return-void
.end method


# virtual methods
.method public getModifications()Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;->modifications:Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    return-object v0
.end method

.method public isFullSync()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;->fullSync:Z

    return v0
.end method
