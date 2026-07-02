.class public Lcom/amazon/kindle/speech/breaker/MobiSpeechBreakerList;
.super Ljava/lang/Object;
.source "MobiSpeechBreakerList.java"

# interfaces
.implements Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;


# instance fields
.field speechBreakerList:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/speech/breaker/MobiSpeechBreakerList;->speechBreakerList:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/speech/breaker/MobiSpeechBreakerList;->speechBreakerList:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->getCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionForItemAt(I)I
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kindle/speech/breaker/MobiSpeechBreakerList;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/speech/breaker/MobiSpeechBreakerList;->speechBreakerList:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;->getEndId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
