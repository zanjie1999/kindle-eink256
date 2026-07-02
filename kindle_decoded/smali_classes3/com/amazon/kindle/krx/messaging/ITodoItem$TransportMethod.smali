.class public final enum Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
.super Ljava/lang/Enum;
.source "ITodoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/messaging/ITodoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

.field public static final enum WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

.field public static final enum WIFI:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WIFI:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    .line 20
    new-instance v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    const/4 v2, 0x1

    const-string v3, "WAN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    .line 17
    sget-object v4, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WIFI:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->$VALUES:[Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTransportMethod(Ljava/lang/String;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 5

    .line 31
    invoke-static {}, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->values()[Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->$VALUES:[Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-object v0
.end method
