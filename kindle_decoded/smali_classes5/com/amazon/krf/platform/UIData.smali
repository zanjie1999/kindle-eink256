.class public Lcom/amazon/krf/platform/UIData;
.super Ljava/lang/Object;
.source "UIData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/UIData$Type;,
        Lcom/amazon/krf/platform/UIData$TransactionType;
    }
.end annotation


# instance fields
.field private dx:F

.field private dy:F

.field private dzoom:F

.field private key:I

.field private span:F

.field private transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

.field private type:Lcom/amazon/krf/platform/UIData$Type;

.field private x:F

.field private y:F

.field private z:F

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/amazon/krf/platform/UIData;->x:F

    iput v0, p0, Lcom/amazon/krf/platform/UIData;->y:F

    iput v0, p0, Lcom/amazon/krf/platform/UIData;->z:F

    iput v0, p0, Lcom/amazon/krf/platform/UIData;->dx:F

    iput v0, p0, Lcom/amazon/krf/platform/UIData;->dy:F

    iput v0, p0, Lcom/amazon/krf/platform/UIData;->zoom:F

    iput v0, p0, Lcom/amazon/krf/platform/UIData;->dzoom:F

    iput v0, p0, Lcom/amazon/krf/platform/UIData;->span:F

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/amazon/krf/platform/UIData;->key:I

    .line 97
    sget-object v0, Lcom/amazon/krf/platform/UIData$TransactionType;->UNKNOWN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    iput-object v0, p0, Lcom/amazon/krf/platform/UIData;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    .line 98
    sget-object v0, Lcom/amazon/krf/platform/UIData$Type;->UNKNOWN:Lcom/amazon/krf/platform/UIData$Type;

    iput-object v0, p0, Lcom/amazon/krf/platform/UIData;->type:Lcom/amazon/krf/platform/UIData$Type;

    return-void
.end method

.method public static createDoubleTap(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;
    .locals 1

    .line 241
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 243
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 244
    sget-object p2, Lcom/amazon/krf/platform/UIData$Type;->DOUBLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 245
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 246
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    return-object v0
.end method

.method public static createDrag(FFFFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;
    .locals 1

    .line 115
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 117
    invoke-direct {v0, p4}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 118
    sget-object p4, Lcom/amazon/krf/platform/UIData$Type;->DRAG:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, p4}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 119
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 120
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    .line 121
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setDx(F)V

    .line 122
    invoke-direct {v0, p3}, Lcom/amazon/krf/platform/UIData;->setDy(F)V

    return-object v0
.end method

.method public static createFling(FFFFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;
    .locals 1

    .line 283
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 285
    invoke-direct {v0, p4}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 286
    sget-object p4, Lcom/amazon/krf/platform/UIData$Type;->FLING:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, p4}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 287
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 288
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    .line 289
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setDx(F)V

    .line 290
    invoke-direct {v0, p3}, Lcom/amazon/krf/platform/UIData;->setDy(F)V

    return-object v0
.end method

.method public static createHover(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;
    .locals 1

    .line 135
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 137
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 138
    sget-object p2, Lcom/amazon/krf/platform/UIData$Type;->HOVER:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 139
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 140
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    return-object v0
.end method

.method public static createKeyPressed(I)Lcom/amazon/krf/platform/UIData;
    .locals 2

    .line 302
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 304
    sget-object v1, Lcom/amazon/krf/platform/UIData$TransactionType;->UNKNOWN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-direct {v0, v1}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 305
    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->KEYSTROKE:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, v1}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 306
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setKey(I)V

    return-object v0
.end method

.method public static createLongPress(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;
    .locals 1

    .line 261
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 263
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 264
    sget-object p2, Lcom/amazon/krf/platform/UIData$Type;->LONG_PRESS:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 265
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 266
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    return-object v0
.end method

.method public static createPinch(FFFF)Lcom/amazon/krf/platform/UIData;
    .locals 2

    .line 155
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 157
    sget-object v1, Lcom/amazon/krf/platform/UIData$TransactionType;->TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-direct {v0, v1}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 158
    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, v1}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 159
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 160
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    .line 161
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setZoom(F)V

    .line 162
    invoke-direct {v0, p3}, Lcom/amazon/krf/platform/UIData;->setSpan(F)V

    return-object v0
.end method

.method public static createPinchFling(FFFFF)Lcom/amazon/krf/platform/UIData;
    .locals 2

    .line 178
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 180
    sget-object v1, Lcom/amazon/krf/platform/UIData$TransactionType;->TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-direct {v0, v1}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 181
    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH_FLING:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, v1}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 182
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 183
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    .line 184
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setZoom(F)V

    .line 185
    invoke-direct {v0, p3}, Lcom/amazon/krf/platform/UIData;->setDZoom(F)V

    .line 186
    invoke-direct {v0, p4}, Lcom/amazon/krf/platform/UIData;->setSpan(F)V

    return-object v0
.end method

.method public static createSingleTap(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;
    .locals 1

    .line 201
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 203
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 204
    sget-object p2, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 205
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 206
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    return-object v0
.end method

.method public static createSingleTapUp(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;
    .locals 1

    .line 221
    new-instance v0, Lcom/amazon/krf/platform/UIData;

    invoke-direct {v0}, Lcom/amazon/krf/platform/UIData;-><init>()V

    .line 223
    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V

    .line 224
    sget-object p2, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    invoke-direct {v0, p2}, Lcom/amazon/krf/platform/UIData;->setType(Lcom/amazon/krf/platform/UIData$Type;)V

    .line 225
    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/UIData;->setX(F)V

    .line 226
    invoke-direct {v0, p1}, Lcom/amazon/krf/platform/UIData;->setY(F)V

    return-object v0
.end method

.method private static getTransactionTypeName(Lcom/amazon/krf/platform/UIData$TransactionType;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    sget-object p0, Lcom/amazon/krf/platform/UIData$TransactionType;->UNKNOWN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeName(Lcom/amazon/krf/platform/UIData$Type;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    sget-object p0, Lcom/amazon/krf/platform/UIData$Type;->UNKNOWN:Lcom/amazon/krf/platform/UIData$Type;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setDZoom(F)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->dzoom:F

    return-void
.end method

.method private setDx(F)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->dx:F

    return-void
.end method

.method private setDy(F)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->dy:F

    return-void
.end method

.method private setKey(I)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->key:I

    return-void
.end method

.method private setSpan(F)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->span:F

    return-void
.end method

.method private setTransactionType(Lcom/amazon/krf/platform/UIData$TransactionType;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/amazon/krf/platform/UIData;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-void
.end method

.method private setType(Lcom/amazon/krf/platform/UIData$Type;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/amazon/krf/platform/UIData;->type:Lcom/amazon/krf/platform/UIData$Type;

    return-void
.end method

.method private setX(F)V
    .locals 0

    .line 420
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->x:F

    return-void
.end method

.method private setY(F)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->y:F

    return-void
.end method

.method private setZ(F)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->z:F

    return-void
.end method

.method private setZoom(F)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/amazon/krf/platform/UIData;->zoom:F

    return-void
.end method


# virtual methods
.method public getDZoom()F
    .locals 1

    .line 343
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->dzoom:F

    return v0
.end method

.method public getDx()F
    .locals 1

    .line 357
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->dx:F

    return v0
.end method

.method public getDy()F
    .locals 1

    .line 385
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->dy:F

    return v0
.end method

.method public getKey()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->key:I

    return v0
.end method

.method public getSpan()F
    .locals 1

    .line 336
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->span:F

    return v0
.end method

.method public getTransactionType()Lcom/amazon/krf/platform/UIData$TransactionType;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/amazon/krf/platform/UIData;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object v0
.end method

.method public getTransactionTypeOrdinal()I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/amazon/krf/platform/UIData;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/amazon/krf/platform/UIData$Type;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazon/krf/platform/UIData;->type:Lcom/amazon/krf/platform/UIData$Type;

    return-object v0
.end method

.method public getTypeOrdinal()I
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/amazon/krf/platform/UIData;->type:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .line 413
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 399
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 371
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->z:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 315
    iget v0, p0, Lcom/amazon/krf/platform/UIData;->zoom:F

    return v0
.end method

.method public setTransactionTypeOrdinal(I)V
    .locals 1

    .line 479
    invoke-static {}, Lcom/amazon/krf/platform/UIData$TransactionType;->values()[Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/amazon/krf/platform/UIData;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-void
.end method

.method public setTypeOrdinal(I)V
    .locals 1

    .line 457
    invoke-static {}, Lcom/amazon/krf/platform/UIData$Type;->values()[Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/amazon/krf/platform/UIData;->type:Lcom/amazon/krf/platform/UIData$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/krf/platform/UIData;->transactionType:Lcom/amazon/krf/platform/UIData$TransactionType;

    invoke-static {v1}, Lcom/amazon/krf/platform/UIData;->getTransactionTypeName(Lcom/amazon/krf/platform/UIData$TransactionType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/platform/UIData;->type:Lcom/amazon/krf/platform/UIData$Type;

    invoke-static {v1}, Lcom/amazon/krf/platform/UIData;->getTypeName(Lcom/amazon/krf/platform/UIData$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
