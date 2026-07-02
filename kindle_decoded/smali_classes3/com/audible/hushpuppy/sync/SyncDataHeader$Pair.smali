.class final Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;
.super Ljava/lang/Object;
.source "SyncDataHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncDataHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pair"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->key:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->val:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 159
    instance-of v0, p1, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    check-cast p1, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;

    .line 163
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->val:Ljava/lang/Object;

    iget-object p1, p1, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->val:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/audible/hushpuppy/sync/SyncDataHeader$Pair;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
