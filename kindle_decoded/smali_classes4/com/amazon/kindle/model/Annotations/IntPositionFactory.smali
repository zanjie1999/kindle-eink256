.class public Lcom/amazon/kindle/model/Annotations/IntPositionFactory;
.super Ljava/lang/Object;
.source "IntPositionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPositionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/reader/IPositionFactory<",
        "Lcom/amazon/kindle/model/Annotations/IntPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;->createFromInt(I)Lcom/amazon/kindle/model/Annotations/IntPosition;

    move-result-object p1

    return-object p1
.end method

.method public createFromInt(I)Lcom/amazon/kindle/model/Annotations/IntPosition;
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/model/Annotations/IntPosition;

    move-result-object p1

    return-object p1
.end method

.method public createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/model/Annotations/IntPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    :try_start_0
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;->createFromString(Ljava/lang/String;)Lcom/amazon/kindle/model/Annotations/IntPosition;

    move-result-object p1

    return-object p1
.end method

.method public createFromString(Ljava/lang/String;)Lcom/amazon/kindle/model/Annotations/IntPosition;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
