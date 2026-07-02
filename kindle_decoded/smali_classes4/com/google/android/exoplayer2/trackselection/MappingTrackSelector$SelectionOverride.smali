.class public final Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# instance fields
.field public final factory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field public final groupIndex:I

.field public final tracks:[I


# virtual methods
.method public createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    return-object p1
.end method
