.class public final enum Lcom/amazon/ksdk/profiles/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/profiles/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/profiles/NetworkType;

.field public static final enum UNKNOWN:Lcom/amazon/ksdk/profiles/NetworkType;

.field public static final enum WAN:Lcom/amazon/ksdk/profiles/NetworkType;

.field public static final enum WIFI:Lcom/amazon/ksdk/profiles/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/amazon/ksdk/profiles/NetworkType;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/profiles/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/NetworkType;->WIFI:Lcom/amazon/ksdk/profiles/NetworkType;

    .line 8
    new-instance v0, Lcom/amazon/ksdk/profiles/NetworkType;

    const/4 v2, 0x1

    const-string v3, "WAN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/profiles/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/NetworkType;->WAN:Lcom/amazon/ksdk/profiles/NetworkType;

    .line 9
    new-instance v0, Lcom/amazon/ksdk/profiles/NetworkType;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/profiles/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/NetworkType;->UNKNOWN:Lcom/amazon/ksdk/profiles/NetworkType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ksdk/profiles/NetworkType;

    .line 6
    sget-object v5, Lcom/amazon/ksdk/profiles/NetworkType;->WIFI:Lcom/amazon/ksdk/profiles/NetworkType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ksdk/profiles/NetworkType;->WAN:Lcom/amazon/ksdk/profiles/NetworkType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ksdk/profiles/NetworkType;->$VALUES:[Lcom/amazon/ksdk/profiles/NetworkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/profiles/NetworkType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ksdk/profiles/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/profiles/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/profiles/NetworkType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ksdk/profiles/NetworkType;->$VALUES:[Lcom/amazon/ksdk/profiles/NetworkType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/profiles/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/profiles/NetworkType;

    return-object v0
.end method
