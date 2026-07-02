.class public Lcom/amazon/krf/platform/SpeechBreaker;
.super Ljava/lang/Object;
.source "SpeechBreaker.java"


# static fields
.field public static final SPEECH_BREAKER_H1:I = 0x2

.field public static final SPEECH_BREAKER_LI:I = 0x3

.field public static final SPEECH_BREAKER_P:I = 0x1

.field public static SPEECH_BREAKER_TD:I = 0x4


# instance fields
.field private final mPosition:Lcom/amazon/krf/platform/Position;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/Position;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/krf/platform/SpeechBreaker;->mPosition:Lcom/amazon/krf/platform/Position;

    .line 38
    iput p2, p0, Lcom/amazon/krf/platform/SpeechBreaker;->mType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 63
    instance-of v0, p1, Lcom/amazon/krf/platform/SpeechBreaker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/amazon/krf/platform/SpeechBreaker;

    .line 65
    iget v0, p0, Lcom/amazon/krf/platform/SpeechBreaker;->mType:I

    iget v2, p1, Lcom/amazon/krf/platform/SpeechBreaker;->mType:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/SpeechBreaker;->mPosition:Lcom/amazon/krf/platform/Position;

    iget-object p1, p1, Lcom/amazon/krf/platform/SpeechBreaker;->mPosition:Lcom/amazon/krf/platform/Position;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/krf/platform/SpeechBreaker;->mPosition:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/krf/platform/SpeechBreaker;->mType:I

    return v0
.end method
