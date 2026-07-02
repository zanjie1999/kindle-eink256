.class public Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;
.super Ljava/lang/Object;
.source "TreadmillRampUp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.doubletime.framework.TreadmillRampUp"


# instance fields
.field private final MAX_WORDS_TO_RAMP_UP:I

.field private final MIN_WORDS_TO_RAMP_UP:I

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field percent:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->percent:F

    const/4 v0, 0x5

    .line 21
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->MIN_WORDS_TO_RAMP_UP:I

    const/16 v0, 0x96

    .line 22
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->MAX_WORDS_TO_RAMP_UP:I

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method


# virtual methods
.method public getDelay(JIII)J
    .locals 3

    .line 52
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->percent:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    long-to-float p1, p1

    mul-float p1, p1, v0

    .line 54
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    sub-int v0, p3, p5

    mul-int/lit16 v0, v0, 0x91

    int-to-float v0, v0

    sub-int/2addr p4, p5

    int-to-float p4, p4

    div-float/2addr v0, p4

    const/high16 p4, 0x40a00000    # 5.0f

    add-float/2addr v0, p4

    .line 64
    iget p4, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->percent:F

    const/high16 p5, 0x3f800000    # 1.0f

    div-float/2addr p5, v0

    sub-float/2addr p4, p5

    iput p4, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->percent:F

    .line 66
    iget-object p4, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object p5, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userWPM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; treadmill delay = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ". Ramp up will complete in "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " words"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p5, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public onLooperEvent(Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->getType()Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;->RESUME:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/TreadmillRampUp;->percent:F

    :cond_0
    return-void
.end method
