.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingAudioSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    .line 345
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    .line 346
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 347
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    return-void
.end method

.method private static findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 639
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 641
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 642
    aget-object v4, p0, v2

    const/4 v5, 0x0

    .line 643
    :goto_1
    iget v6, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_2

    .line 644
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-le v6, v3, :cond_1

    const/4 v0, 0x4

    if-ne v6, v0, :cond_0

    return v2

    :cond_0
    move v0, v2

    move v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 671
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 672
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 673
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 689
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 691
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V
    .locals 10

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 725
    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6

    .line 726
    aget-object v5, p0, v2

    invoke-interface {v5}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v5

    .line 727
    aget-object v7, p4, v2

    if-eq v5, v6, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 730
    aget-object v8, p2, v2

    aget-object v9, p1, v2

    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v5, v6, :cond_3

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    if-eq v3, v1, :cond_4

    :goto_1
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    :goto_3
    if-eq v4, v1, :cond_7

    if-eq v3, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 752
    new-instance p0, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {p0, p5}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(I)V

    .line 754
    aput-object p0, p3, v4

    .line 755
    aput-object p0, p3, v3

    :cond_8
    return-void
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 773
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    const/4 v1, 0x0

    .line 774
    :goto_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 775
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 430
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    .line 598
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 516
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 517
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 518
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [[[I

    const/4 v10, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 520
    iget v5, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v6, v5, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v6, v2, v4

    .line 521
    new-array v5, v5, [[I

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I

    move-result-object v7

    const/4 v1, 0x0

    .line 529
    :goto_1
    iget v4, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v4, :cond_2

    .line 530
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 532
    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v5

    .line 534
    array-length v6, p1

    if-ne v5, v6, :cond_1

    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v6, v6, [I

    goto :goto_2

    :cond_1
    aget-object v6, p1, v5

    .line 535
    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    move-result-object v6

    .line 537
    :goto_2
    aget v8, v0, v5

    .line 538
    aget-object v9, v2, v5

    aput-object v4, v9, v8

    .line 539
    aget-object v4, v3, v5

    aput-object v6, v4, v8

    .line 540
    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 544
    :cond_2
    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 545
    array-length v4, p1

    new-array v5, v4, [I

    const/4 v4, 0x0

    .line 546
    :goto_3
    array-length v6, p1

    if-ge v4, v6, :cond_3

    .line 547
    aget v6, v0, v4

    .line 548
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v9, v2, v4

    .line 549
    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v8, v1, v4

    .line 550
    aget-object v8, v3, v4

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    aput-object v6, v3, v4

    .line 551
    aget-object v6, p1, v4

    invoke-interface {v6}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 555
    :cond_3
    array-length v4, p1

    aget v0, v0, v4

    .line 556
    new-instance v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v4, p1

    aget-object v2, v2, v4

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 559
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    const/4 v2, 0x0

    .line 563
    :goto_4
    array-length v4, p1

    const/4 v11, 0x0

    if-ge v2, v4, :cond_7

    .line 564
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 565
    aput-object v11, v0, v2

    goto :goto_6

    .line 567
    :cond_4
    aget-object v4, v1, v2

    .line 568
    invoke-virtual {p0, v2, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 569
    iget-object v6, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    if-nez v6, :cond_5

    goto :goto_5

    .line 571
    :cond_5
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v11

    :goto_5
    aput-object v11, v0, v2

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 577
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v4, v2

    move-object v6, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 583
    array-length v4, p1

    new-array v12, v4, [Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 585
    :goto_7
    array-length v4, p1

    if-ge v10, v4, :cond_9

    .line 586
    aget-object v4, v0, v10

    if-eqz v4, :cond_8

    sget-object v4, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_8

    :cond_8
    move-object v4, v11

    :goto_8
    aput-object v4, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 589
    :cond_9
    iget v9, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    move-object v4, p1

    move-object v5, v1

    move-object v6, v3

    move-object v7, v12

    move-object v8, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V

    .line 592
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    invoke-direct {p1, p2, v1, v2, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;[Lcom/google/android/exoplayer2/RendererConfiguration;)V

    return-object p1
.end method

.method protected abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method
