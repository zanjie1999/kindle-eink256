.class public Lcom/amazon/kindle/rendering/KRIFUIEvent;
.super Ljava/lang/Object;
.source "KRIFUIEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;,
        Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final handledByReader:Z

.field private final transactionType:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

.field private final type:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field private final xCoord:F

.field private final yCoord:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/rendering/KRIFUIEvent;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->didHandleEvent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->handledByReader:Z

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->xCoord:F

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->yCoord:F

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->convertType(Lcom/amazon/krf/platform/UIData$Type;)Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->type:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->getTransactionType()Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->convertTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->transactionType:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    return-void
.end method

.method public constructor <init>(ZFFLcom/amazon/krf/platform/UIData$Type;Lcom/amazon/krf/platform/UIData$TransactionType;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->handledByReader:Z

    .line 50
    iput p2, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->xCoord:F

    .line 51
    iput p3, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->yCoord:F

    .line 52
    invoke-direct {p0, p4}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->convertType(Lcom/amazon/krf/platform/UIData$Type;)Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->type:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 53
    invoke-direct {p0, p5}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->convertTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->transactionType:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    return-void
.end method

.method private convertTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;
    .locals 4

    .line 161
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->TOUCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    .line 162
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$TransactionType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 167
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KRF Direct event without tranaction type KRIFEvent mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->PEN:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    :goto_0
    return-object v0
.end method

.method private convertType(Lcom/amazon/krf/platform/UIData$Type;)Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;
    .locals 4

    .line 116
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->UNKNOWN:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 117
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$1;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 149
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KRF Direct event without KRIFEvent mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :pswitch_0
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->KEYSTROKE:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 143
    :pswitch_1
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 140
    :pswitch_2
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->LONG_PRESS:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 137
    :pswitch_3
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->DOUBLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 134
    :pswitch_4
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP_UP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 131
    :pswitch_5
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 128
    :pswitch_6
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH_FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 125
    :pswitch_7
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 122
    :pswitch_8
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->HOVER:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    goto :goto_0

    .line 119
    :pswitch_9
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->DRAG:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getTransactionType()Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->transactionType:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->type:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->xCoord:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->yCoord:F

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHandledByReader()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEvent;->handledByReader:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KRIFEvent("

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->getType()Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x="

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "y="

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type="

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->getType()Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "transactionType="

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->getTransactionType()Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
