.class public Lcom/amazon/kindle/speech/breaker/KRIFSpeechBreakerList;
.super Ljava/lang/Object;
.source "KRIFSpeechBreakerList.java"

# interfaces
.implements Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;


# instance fields
.field speechBreakerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/SpeechBreaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/SpeechBreaker;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/speech/breaker/KRIFSpeechBreakerList;->speechBreakerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/speech/breaker/KRIFSpeechBreakerList;->speechBreakerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionForItemAt(I)I
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/amazon/kindle/speech/breaker/KRIFSpeechBreakerList;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/speech/breaker/KRIFSpeechBreakerList;->speechBreakerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/SpeechBreaker;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/SpeechBreaker;->getPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
