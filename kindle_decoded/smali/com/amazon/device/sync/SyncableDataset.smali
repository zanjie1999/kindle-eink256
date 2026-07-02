.class public interface abstract Lcom/amazon/device/sync/SyncableDataset;
.super Ljava/lang/Object;
.source "SyncableDataset.java"


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
.field public static final MAX_NAME_LENGTH:I = 0x400


# virtual methods
.method public abstract close()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract download()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fetch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation
.end method

.method public abstract getAccountId()Ljava/lang/String;
.end method

.method public abstract getConflicts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/amazon/device/sync/DatasetType;
.end method

.method public abstract hasConflicts()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation
.end method

.method public abstract synchronize()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract upload()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
