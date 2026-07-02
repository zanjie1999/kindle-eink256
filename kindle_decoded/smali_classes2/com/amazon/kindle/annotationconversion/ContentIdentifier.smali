.class public final Lcom/amazon/kindle/annotationconversion/ContentIdentifier;
.super Ljava/lang/Object;
.source "ContentIdentifier.java"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final guid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->asin:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->guid:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "guid is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "asin is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "guid is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "asin is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentIdentifier{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
