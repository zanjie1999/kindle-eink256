.class public final enum Lamazon/whispersync/communication/connection/CompressionOption;
.super Ljava/lang/Enum;
.source "CompressionOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamazon/whispersync/communication/connection/CompressionOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamazon/whispersync/communication/connection/CompressionOption;

.field public static final enum ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

.field public static final enum NOT_ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

.field public static final enum REQUIRED:Lamazon/whispersync/communication/connection/CompressionOption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lamazon/whispersync/communication/connection/CompressionOption;

    const/4 v1, 0x0

    const-string v2, "REQUIRED"

    invoke-direct {v0, v2, v1}, Lamazon/whispersync/communication/connection/CompressionOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/CompressionOption;->REQUIRED:Lamazon/whispersync/communication/connection/CompressionOption;

    .line 29
    new-instance v0, Lamazon/whispersync/communication/connection/CompressionOption;

    const/4 v2, 0x1

    const-string v3, "ALLOWED"

    invoke-direct {v0, v3, v2}, Lamazon/whispersync/communication/connection/CompressionOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

    .line 33
    new-instance v0, Lamazon/whispersync/communication/connection/CompressionOption;

    const/4 v3, 0x2

    const-string v4, "NOT_ALLOWED"

    invoke-direct {v0, v4, v3}, Lamazon/whispersync/communication/connection/CompressionOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lamazon/whispersync/communication/connection/CompressionOption;->NOT_ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

    const/4 v4, 0x3

    new-array v4, v4, [Lamazon/whispersync/communication/connection/CompressionOption;

    .line 21
    sget-object v5, Lamazon/whispersync/communication/connection/CompressionOption;->REQUIRED:Lamazon/whispersync/communication/connection/CompressionOption;

    aput-object v5, v4, v1

    sget-object v1, Lamazon/whispersync/communication/connection/CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lamazon/whispersync/communication/connection/CompressionOption;->$VALUES:[Lamazon/whispersync/communication/connection/CompressionOption;

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

.method public static valueOf(Ljava/lang/String;)Lamazon/whispersync/communication/connection/CompressionOption;
    .locals 1

    .line 21
    const-class v0, Lamazon/whispersync/communication/connection/CompressionOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamazon/whispersync/communication/connection/CompressionOption;

    return-object p0
.end method

.method public static values()[Lamazon/whispersync/communication/connection/CompressionOption;
    .locals 1

    .line 21
    sget-object v0, Lamazon/whispersync/communication/connection/CompressionOption;->$VALUES:[Lamazon/whispersync/communication/connection/CompressionOption;

    invoke-virtual {v0}, [Lamazon/whispersync/communication/connection/CompressionOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamazon/whispersync/communication/connection/CompressionOption;

    return-object v0
.end method
