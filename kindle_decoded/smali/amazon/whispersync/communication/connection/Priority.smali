.class public final enum Lamazon/whispersync/communication/connection/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/connection/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/connection/Priority;

.field public static final enum PRIORITY_HIGH:Lamazon/whispersync/communication/connection/Priority;

.field public static final enum PRIORITY_LOW:Lamazon/whispersync/communication/connection/Priority;

.field public static final enum PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lamazon/whispersync/communication/connection/Priority;

    const/4 v1, 0x0

    const-string v2, "PRIORITY_HIGH"

    invoke-direct {v0, v2, v1}, Lamazon/whispersync/communication/connection/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_HIGH:Lamazon/whispersync/communication/connection/Priority;

    .line 27
    new-instance v0, Lamazon/whispersync/communication/connection/Priority;

    const/4 v2, 0x1

    const-string v3, "PRIORITY_NORMAL"

    invoke-direct {v0, v3, v2}, Lamazon/whispersync/communication/connection/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;

    .line 31
    new-instance v0, Lamazon/whispersync/communication/connection/Priority;

    const/4 v3, 0x2

    const-string v4, "PRIORITY_LOW"

    invoke-direct {v0, v4, v3}, Lamazon/whispersync/communication/connection/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_LOW:Lamazon/whispersync/communication/connection/Priority;

    const/4 v4, 0x3

    new-array v4, v4, [Lamazon/whispersync/communication/connection/Priority;

    .line 19
    sget-object v5, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_HIGH:Lamazon/whispersync/communication/connection/Priority;

    aput-object v5, v4, v1

    sget-object v1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lamazon/whispersync/communication/connection/Priority;->$VALUES:[Lamazon/whispersync/communication/connection/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/Priority;
    .locals 1

    .line 19
    const-class v0, Lamazon/whispersync/communication/connection/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/connection/Priority;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/connection/Priority;
    .locals 1

    .line 19
    sget-object v0, Lamazon/whispersync/communication/connection/Priority;->$VALUES:[Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/connection/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/connection/Priority;

    return-object v0
.end method
