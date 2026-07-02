.class public final enum Lamazon/whispersync/communication/connection/KeepAlive;
.super Ljava/lang/Enum;
.source "KeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/connection/KeepAlive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/connection/KeepAlive;

.field public static final enum ADAPTIVE:Lamazon/whispersync/communication/connection/KeepAlive;

.field public static final enum NONE:Lamazon/whispersync/communication/connection/KeepAlive;

.field public static final enum STATIC:Lamazon/whispersync/communication/connection/KeepAlive;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lamazon/whispersync/communication/connection/KeepAlive;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lamazon/whispersync/communication/connection/KeepAlive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/KeepAlive;->NONE:Lamazon/whispersync/communication/connection/KeepAlive;

    .line 33
    new-instance v0, Lamazon/whispersync/communication/connection/KeepAlive;

    const/4 v2, 0x1

    const-string v3, "STATIC"

    invoke-direct {v0, v3, v2}, Lamazon/whispersync/communication/connection/KeepAlive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/KeepAlive;->STATIC:Lamazon/whispersync/communication/connection/KeepAlive;

    .line 48
    new-instance v0, Lamazon/whispersync/communication/connection/KeepAlive;

    const/4 v3, 0x2

    const-string v4, "ADAPTIVE"

    invoke-direct {v0, v4, v3}, Lamazon/whispersync/communication/connection/KeepAlive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/KeepAlive;->ADAPTIVE:Lamazon/whispersync/communication/connection/KeepAlive;

    const/4 v4, 0x3

    new-array v4, v4, [Lamazon/whispersync/communication/connection/KeepAlive;

    .line 21
    sget-object v5, Lamazon/whispersync/communication/connection/KeepAlive;->NONE:Lamazon/whispersync/communication/connection/KeepAlive;

    aput-object v5, v4, v1

    sget-object v1, Lamazon/whispersync/communication/connection/KeepAlive;->STATIC:Lamazon/whispersync/communication/connection/KeepAlive;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lamazon/whispersync/communication/connection/KeepAlive;->$VALUES:[Lamazon/whispersync/communication/connection/KeepAlive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/KeepAlive;
    .locals 1

    .line 21
    const-class v0, Lamazon/whispersync/communication/connection/KeepAlive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/connection/KeepAlive;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/connection/KeepAlive;
    .locals 1

    .line 21
    sget-object v0, Lamazon/whispersync/communication/connection/KeepAlive;->$VALUES:[Lamazon/whispersync/communication/connection/KeepAlive;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/connection/KeepAlive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/connection/KeepAlive;

    return-object v0
.end method
