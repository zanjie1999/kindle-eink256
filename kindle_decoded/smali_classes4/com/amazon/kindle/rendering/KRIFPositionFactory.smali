.class public Lcom/amazon/kindle/rendering/KRIFPositionFactory;
.super Ljava/lang/Object;
.source "KRIFPositionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IPositionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/reader/IPositionFactory<",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        ">;"
    }
.end annotation


# instance fields
.field private krifBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFBookItem;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFPositionFactory;->krifBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    return-void
.end method


# virtual methods
.method public createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPositionFactory;->krifBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createPlatformPosition(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    return-object v0
.end method

.method public createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/rendering/KRIFPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 34
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPositionFactory;->krifBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createPlatformPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public createFromString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPositionFactory;->krifBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createPlatformPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_0
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    return-object v0
.end method
