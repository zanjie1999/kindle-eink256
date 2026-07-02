.class final enum Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;
.super Ljava/lang/Enum;
.source "FastMetricsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/metrics/FastMetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EntityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

.field public static final enum ALL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

.field public static final enum PERSON:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

.field public static final enum TERM:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;


# instance fields
.field final id:I

.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    const/4 v1, 0x0

    const-string v2, "ALL"

    const-string v3, "All"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->ALL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    .line 63
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    const/4 v2, 0x1

    const-string v3, "PERSON"

    const-string v4, "Person"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->PERSON:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    .line 64
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    const/4 v3, 0x2

    const-string v4, "TERM"

    const-string v5, "Term"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->TERM:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    .line 60
    sget-object v5, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->ALL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->PERSON:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->id:I

    .line 71
    iput-object p4, p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->value:Ljava/lang/String;

    return-void
.end method

.method static valueOf(I)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;
    .locals 5

    .line 75
    invoke-static {}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->values()[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 76
    iget v4, v3, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    sget-object p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->ALL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    return-object p0
.end method

.method static valueOf(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;
    .locals 1

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/Entity;->getType()Lcom/amazon/xray/model/object/EntityType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/Entity;->getType()Lcom/amazon/xray/model/object/EntityType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/xray/model/object/EntityType;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->valueOf(I)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    sget-object p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->ALL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;
    .locals 1

    .line 60
    const-class v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    invoke-virtual {v0}, [Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/xray/metrics/FastMetricsRecorder$EntityType;

    return-object v0
.end method
