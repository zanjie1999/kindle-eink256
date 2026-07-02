.class public Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;
.super Lcom/amazon/krf/platform/UIHandle;
.source "KRIFUIEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFUIEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KRIFUIHandle"
.end annotation


# instance fields
.field private didHandleTapUp:Z

.field readerHandled:Z

.field transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

.field type:Lcom/amazon/krf/platform/UIData$Type;

.field private weakKrifView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/rendering/KRIFView;",
            ">;"
        }
    .end annotation
.end field

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/UIData$TransactionType;FFLcom/amazon/kindle/rendering/KRIFView;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/amazon/krf/platform/UIHandle;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->didHandleTapUp:Z

    .line 104
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    .line 105
    iput p2, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->x:F

    .line 106
    iput p3, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->y:F

    .line 107
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->weakKrifView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public didHandleEvent()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    return v0
.end method

.method public getTransactionType()Lcom/amazon/krf/platform/UIData$TransactionType;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object v0
.end method

.method public getType()Lcom/amazon/krf/platform/UIData$Type;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->type:Lcom/amazon/krf/platform/UIData$Type;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 150
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 154
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->y:F

    return v0
.end method

.method public handleEvent()V
    .locals 2

    .line 138
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFUIEvent;-><init>(Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;)V

    .line 141
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->weakKrifView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/rendering/KRIFView;

    .line 142
    invoke-static {v0, v1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->access$000(Lcom/amazon/kindle/rendering/KRIFUIEvent;Lcom/amazon/kindle/rendering/KRIFView;)V

    return-void
.end method

.method public shouldHandleEvent(Lcom/amazon/krf/platform/UIData;)Z
    .locals 3

    .line 111
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getTransactionType()Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->type:Lcom/amazon/krf/platform/UIData$Type;

    .line 116
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$2;->$SwitchMap$com$amazon$krf$platform$UIData$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 131
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    goto :goto_0

    .line 128
    :cond_1
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    goto :goto_0

    .line 125
    :cond_2
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    goto :goto_0

    .line 121
    :cond_3
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->didHandleTapUp:Z

    .line 122
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    goto :goto_0

    .line 118
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->didHandleTapUp:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    .line 134
    :goto_0
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->readerHandled:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandle ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " transactionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
