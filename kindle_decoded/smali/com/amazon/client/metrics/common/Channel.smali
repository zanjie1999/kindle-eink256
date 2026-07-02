.class public final enum Lcom/amazon/client/metrics/common/Channel;
.super Ljava/lang/Enum;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/common/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/common/Channel;

.field public static final enum ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

.field public static final enum LOCATION:Lcom/amazon/client/metrics/common/Channel;

.field public static final enum NON_ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/amazon/client/metrics/common/Channel;

    const/4 v1, 0x0

    const-string v2, "LOCATION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/client/metrics/common/Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/common/Channel;->LOCATION:Lcom/amazon/client/metrics/common/Channel;

    .line 27
    new-instance v0, Lcom/amazon/client/metrics/common/Channel;

    const/4 v2, 0x1

    const-string v3, "ANONYMOUS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/client/metrics/common/Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    .line 35
    new-instance v0, Lcom/amazon/client/metrics/common/Channel;

    const/4 v3, 0x2

    const-string v4, "NON_ANONYMOUS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/client/metrics/common/Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/common/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/client/metrics/common/Channel;

    .line 12
    sget-object v5, Lcom/amazon/client/metrics/common/Channel;->LOCATION:Lcom/amazon/client/metrics/common/Channel;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/client/metrics/common/Channel;->$VALUES:[Lcom/amazon/client/metrics/common/Channel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/common/Channel;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/client/metrics/common/Channel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/Channel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/common/Channel;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/client/metrics/common/Channel;->$VALUES:[Lcom/amazon/client/metrics/common/Channel;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/common/Channel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/common/Channel;

    return-object v0
.end method
