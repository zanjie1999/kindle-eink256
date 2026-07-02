.class public final Lcom/audible/hushpuppy/common/event/readalong/PlayingUnsynchronizedContentEvent;
.super Ljava/lang/Object;
.source "PlayingUnsynchronizedContentEvent.java"


# instance fields
.field private final audiobookPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/audible/hushpuppy/common/event/readalong/PlayingUnsynchronizedContentEvent;->audiobookPosition:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayingUnsynchronizedContentEvent{audioPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/hushpuppy/common/event/readalong/PlayingUnsynchronizedContentEvent;->audiobookPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
