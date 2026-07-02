.class public final enum Lcom/amazon/identity/auth/device/utils/KeyType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/utils/KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/utils/KeyType;

.field public static final enum Debug:Lcom/amazon/identity/auth/device/utils/KeyType;

.field public static final enum Release:Lcom/amazon/identity/auth/device/utils/KeyType;

.field public static final enum ReleaseDebug:Lcom/amazon/identity/auth/device/utils/KeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/amazon/identity/auth/device/utils/KeyType;

    const/4 v1, 0x0

    const-string v2, "Debug"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/utils/KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/KeyType;->Debug:Lcom/amazon/identity/auth/device/utils/KeyType;

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/utils/KeyType;

    const/4 v2, 0x1

    const-string v3, "ReleaseDebug"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/utils/KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/KeyType;->ReleaseDebug:Lcom/amazon/identity/auth/device/utils/KeyType;

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/utils/KeyType;

    const/4 v3, 0x2

    const-string v4, "Release"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/utils/KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/KeyType;->Release:Lcom/amazon/identity/auth/device/utils/KeyType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/device/utils/KeyType;

    .line 8
    sget-object v5, Lcom/amazon/identity/auth/device/utils/KeyType;->Debug:Lcom/amazon/identity/auth/device/utils/KeyType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/device/utils/KeyType;->ReleaseDebug:Lcom/amazon/identity/auth/device/utils/KeyType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/device/utils/KeyType;->$VALUES:[Lcom/amazon/identity/auth/device/utils/KeyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/KeyType;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/identity/auth/device/utils/KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/utils/KeyType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/utils/KeyType;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/identity/auth/device/utils/KeyType;->$VALUES:[Lcom/amazon/identity/auth/device/utils/KeyType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/utils/KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/utils/KeyType;

    return-object v0
.end method
