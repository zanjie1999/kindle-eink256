.class public abstract Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;
.super Ljava/lang/Object;
.source "AudiobookEvent.java"


# instance fields
.field protected final identifier:Lcom/audible/mobile/domain/Identifier;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Identifier;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->identifier:Lcom/audible/mobile/domain/Identifier;

    return-void
.end method


# virtual methods
.method public final getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->identifier:Lcom/audible/mobile/domain/Identifier;

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method
