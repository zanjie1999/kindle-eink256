.class public final enum Lcom/amazon/kindle/services/download/AssetState;
.super Ljava/lang/Enum;
.source "AssetState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/download/AssetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/download/AssetState;

.field public static final enum DOWNLOADING:Lcom/amazon/kindle/services/download/AssetState;

.field public static final enum ERROR:Lcom/amazon/kindle/services/download/AssetState;

.field public static final enum LOCAL:Lcom/amazon/kindle/services/download/AssetState;

.field public static final enum PAUSED:Lcom/amazon/kindle/services/download/AssetState;

.field public static final enum PREQUEUED:Lcom/amazon/kindle/services/download/AssetState;

.field public static final enum QUEUED:Lcom/amazon/kindle/services/download/AssetState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/amazon/kindle/services/download/AssetState;

    const/4 v1, 0x0

    const-string v2, "QUEUED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/services/download/AssetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetState;->QUEUED:Lcom/amazon/kindle/services/download/AssetState;

    .line 11
    new-instance v0, Lcom/amazon/kindle/services/download/AssetState;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/services/download/AssetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetState;->DOWNLOADING:Lcom/amazon/kindle/services/download/AssetState;

    .line 12
    new-instance v0, Lcom/amazon/kindle/services/download/AssetState;

    const/4 v3, 0x2

    const-string v4, "LOCAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/services/download/AssetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    .line 13
    new-instance v0, Lcom/amazon/kindle/services/download/AssetState;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/services/download/AssetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetState;->ERROR:Lcom/amazon/kindle/services/download/AssetState;

    .line 14
    new-instance v0, Lcom/amazon/kindle/services/download/AssetState;

    const/4 v5, 0x4

    const-string v6, "PREQUEUED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/services/download/AssetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetState;->PREQUEUED:Lcom/amazon/kindle/services/download/AssetState;

    .line 15
    new-instance v0, Lcom/amazon/kindle/services/download/AssetState;

    const/4 v6, 0x5

    const-string v7, "PAUSED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/services/download/AssetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetState;->PAUSED:Lcom/amazon/kindle/services/download/AssetState;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/services/download/AssetState;

    .line 6
    sget-object v8, Lcom/amazon/kindle/services/download/AssetState;->QUEUED:Lcom/amazon/kindle/services/download/AssetState;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->DOWNLOADING:Lcom/amazon/kindle/services/download/AssetState;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->ERROR:Lcom/amazon/kindle/services/download/AssetState;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/services/download/AssetState;->PREQUEUED:Lcom/amazon/kindle/services/download/AssetState;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/services/download/AssetState;->$VALUES:[Lcom/amazon/kindle/services/download/AssetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromRequestStatus(Lcom/amazon/kindle/webservices/RequestStatus;)Lcom/amazon/kindle/services/download/AssetState;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kindle/services/download/AssetState$1;->$SwitchMap$com$amazon$kindle$webservices$RequestStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 41
    const-class p0, Lcom/amazon/kindle/services/download/AssetState;

    invoke-static {p0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected RequestStatus!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    sget-object p0, Lcom/amazon/kindle/services/download/AssetState;->PAUSED:Lcom/amazon/kindle/services/download/AssetState;

    return-object p0

    .line 37
    :cond_1
    sget-object p0, Lcom/amazon/kindle/services/download/AssetState;->ERROR:Lcom/amazon/kindle/services/download/AssetState;

    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    return-object p0

    .line 33
    :cond_3
    sget-object p0, Lcom/amazon/kindle/services/download/AssetState;->DOWNLOADING:Lcom/amazon/kindle/services/download/AssetState;

    return-object p0

    .line 31
    :cond_4
    sget-object p0, Lcom/amazon/kindle/services/download/AssetState;->QUEUED:Lcom/amazon/kindle/services/download/AssetState;

    return-object p0
.end method

.method public static getFromSerialized(I)Lcom/amazon/kindle/services/download/AssetState;
    .locals 1

    .line 22
    invoke-static {}, Lcom/amazon/kindle/services/download/AssetState;->values()[Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/download/AssetState;->values()[Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetState;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kindle/services/download/AssetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/AssetState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/download/AssetState;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/services/download/AssetState;->$VALUES:[Lcom/amazon/kindle/services/download/AssetState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/download/AssetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/download/AssetState;

    return-object v0
.end method


# virtual methods
.method public getSerializedForm()I
    .locals 1

    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
