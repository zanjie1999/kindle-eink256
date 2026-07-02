.class public final Lcom/audible/android/kcp/metrics/AiRMetricKey;
.super Ljava/lang/Object;
.source "AiRMetricKey.java"


# instance fields
.field private final mEventEndName:Ljava/lang/String;

.field private final mEventName:Ljava/lang/String;

.field private final mEventStartName:Ljava/lang/String;

.field private final mTimerKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventName:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mTimerKey:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-start"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventStartName:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventEndName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventEndName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventEndName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventStartName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventStartName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiRMetricKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AiRMetricKey;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
