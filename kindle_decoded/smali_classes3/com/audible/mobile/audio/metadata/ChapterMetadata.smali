.class public interface abstract Lcom/audible/mobile/audio/metadata/ChapterMetadata;
.super Ljava/lang/Object;
.source "ChapterMetadata.java"

# interfaces
.implements Lcom/audible/mobile/domain/Hierarchical;
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Hierarchical<",
        "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract getIndex()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getLevel()I
.end method

.method public abstract getLevelIndex()I
.end method

.method public abstract getStartTime()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
