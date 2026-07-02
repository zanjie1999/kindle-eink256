.class public final Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# instance fields
.field private final formatSupport:[[[I

.field private final mixedMimeTypeAdaptiveSupport:[I

.field private final rendererTrackTypes:[I

.field private final trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 127
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 128
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    .line 129
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    .line 130
    iput-object p5, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 131
    array-length p1, p2

    return-void
.end method
