.class public Lcom/audible/hushpuppy/common/event/file/AutoDownloadNotHappeningEvent;
.super Ljava/lang/Object;
.source "AutoDownloadNotHappeningEvent.java"


# instance fields
.field private final relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/file/AutoDownloadNotHappeningEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-void
.end method


# virtual methods
.method public getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/file/AutoDownloadNotHappeningEvent;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method
