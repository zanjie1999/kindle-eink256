.class public final enum Lcom/amazon/whispersync/client/metrics/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/Priority;

.field public static final enum HIGH:Lcom/amazon/whispersync/client/metrics/Priority;

.field public static final enum NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

.field public static final enum RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/whispersync/client/metrics/Priority;

.field public static final enum RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/whispersync/client/metrics/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/amazon/whispersync/client/metrics/Priority;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/client/metrics/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/Priority;->NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

    .line 33
    new-instance v0, Lcom/amazon/whispersync/client/metrics/Priority;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/client/metrics/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/Priority;->HIGH:Lcom/amazon/whispersync/client/metrics/Priority;

    .line 37
    new-instance v0, Lcom/amazon/whispersync/client/metrics/Priority;

    const/4 v3, 0x2

    const-string v4, "RESERVED_FOR_LOCATION_SERVICE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/client/metrics/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/whispersync/client/metrics/Priority;

    .line 43
    new-instance v0, Lcom/amazon/whispersync/client/metrics/Priority;

    const/4 v4, 0x3

    const-string v5, "RESERVED_FOR_NON_ANONYMOUS_METRICS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/client/metrics/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/whispersync/client/metrics/Priority;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whispersync/client/metrics/Priority;

    .line 25
    sget-object v6, Lcom/amazon/whispersync/client/metrics/Priority;->NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whispersync/client/metrics/Priority;->HIGH:Lcom/amazon/whispersync/client/metrics/Priority;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/whispersync/client/metrics/Priority;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whispersync/client/metrics/Priority;->$VALUES:[Lcom/amazon/whispersync/client/metrics/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/amazon/whispersync/client/metrics/Priority;
    .locals 3

    if-ltz p0, :cond_0

    .line 47
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/Priority;->values()[Lcom/amazon/whispersync/client/metrics/Priority;

    move-result-object v0

    array-length v0, v0

    if-gt p0, v0, :cond_0

    .line 50
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/Priority;->values()[Lcom/amazon/whispersync/client/metrics/Priority;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/Priority;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/Priority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/Priority;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/whispersync/client/metrics/Priority;->$VALUES:[Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/Priority;

    return-object v0
.end method
