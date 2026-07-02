.class public Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory;
.super Ljava/lang/Object;
.source "AiRCoverArtTypeFactory.java"

# interfaces
.implements Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTypeFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory;->get()[Lcom/audible/mobile/audio/metadata/CoverArtType;

    move-result-object v0

    return-object v0
.end method

.method public get()[Lcom/audible/mobile/audio/metadata/CoverArtType;
    .locals 1

    .line 25
    invoke-static {}, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;->values()[Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    move-result-object v0

    return-object v0
.end method
