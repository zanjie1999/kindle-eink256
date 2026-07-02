.class public final enum Lcom/amazon/client/metrics/thirdparty/Channel;
.super Ljava/lang/Enum;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/thirdparty/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/thirdparty/Channel;

.field public static final enum ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

.field public static final enum LOCATION:Lcom/amazon/client/metrics/thirdparty/Channel;

.field public static final enum NON_ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/Channel;

    const/4 v1, 0x0

    const-string v2, "LOCATION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/client/metrics/thirdparty/Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/Channel;->LOCATION:Lcom/amazon/client/metrics/thirdparty/Channel;

    .line 17
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/Channel;

    const/4 v2, 0x1

    const-string v3, "ANONYMOUS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/client/metrics/thirdparty/Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    .line 22
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/Channel;

    const/4 v3, 0x2

    const-string v4, "NON_ANONYMOUS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/client/metrics/thirdparty/Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/client/metrics/thirdparty/Channel;

    .line 8
    sget-object v5, Lcom/amazon/client/metrics/thirdparty/Channel;->LOCATION:Lcom/amazon/client/metrics/thirdparty/Channel;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/client/metrics/thirdparty/Channel;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/Channel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/amazon/client/metrics/thirdparty/Channel;
    .locals 3

    if-ltz p0, :cond_0

    .line 25
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/Priority;->values()[Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v0

    array-length v0, v0

    if-gt p0, v0, :cond_0

    .line 28
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/Channel;->values()[Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 26
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/Channel;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/thirdparty/Channel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/thirdparty/Channel;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/Channel;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/thirdparty/Channel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/thirdparty/Channel;

    return-object v0
.end method
