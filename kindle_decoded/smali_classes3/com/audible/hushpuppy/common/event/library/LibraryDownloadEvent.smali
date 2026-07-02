.class public final Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;
.super Ljava/lang/Object;
.source "LibraryDownloadEvent.java"


# instance fields
.field private final relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-void
.end method


# virtual methods
.method public getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method
