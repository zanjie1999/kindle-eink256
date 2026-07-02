.class public final enum Lamazon/whispersync/communication/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/Priority;

.field public static final enum PRIORITY_HIGH:Lamazon/whispersync/communication/Priority;

.field public static final enum PRIORITY_LOW:Lamazon/whispersync/communication/Priority;

.field public static final enum PRIORITY_NORMAL:Lamazon/whispersync/communication/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lamazon/whispersync/communication/Priority;

    const/4 v1, 0x0

    const-string v2, "PRIORITY_HIGH"

    invoke-direct {v0, v2, v1}, Lamazon/whispersync/communication/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/Priority;->PRIORITY_HIGH:Lamazon/whispersync/communication/Priority;

    .line 28
    new-instance v0, Lamazon/whispersync/communication/Priority;

    const/4 v2, 0x1

    const-string v3, "PRIORITY_NORMAL"

    invoke-direct {v0, v3, v2}, Lamazon/whispersync/communication/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/Priority;

    .line 32
    new-instance v0, Lamazon/whispersync/communication/Priority;

    const/4 v3, 0x2

    const-string v4, "PRIORITY_LOW"

    invoke-direct {v0, v4, v3}, Lamazon/whispersync/communication/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/Priority;->PRIORITY_LOW:Lamazon/whispersync/communication/Priority;

    const/4 v4, 0x3

    new-array v4, v4, [Lamazon/whispersync/communication/Priority;

    .line 20
    sget-object v5, Lamazon/whispersync/communication/Priority;->PRIORITY_HIGH:Lamazon/whispersync/communication/Priority;

    aput-object v5, v4, v1

    sget-object v1, Lamazon/whispersync/communication/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/Priority;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lamazon/whispersync/communication/Priority;->$VALUES:[Lamazon/whispersync/communication/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/Priority;
    .locals 1

    .line 20
    const-class v0, Lamazon/whispersync/communication/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/Priority;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/Priority;
    .locals 1

    .line 20
    sget-object v0, Lamazon/whispersync/communication/Priority;->$VALUES:[Lamazon/whispersync/communication/Priority;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/Priority;

    return-object v0
.end method


# virtual methods
.method public convertToConnectionPriority()Lamazon/whispersync/communication/connection/Priority;
    .locals 2

    .line 38
    sget-object v0, Lamazon/whispersync/communication/Priority$1;->$SwitchMap$amazon$communication$Priority:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 42
    sget-object v0, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_LOW:Lamazon/whispersync/communication/connection/Priority;

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;

    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_HIGH:Lamazon/whispersync/communication/connection/Priority;

    return-object v0
.end method
