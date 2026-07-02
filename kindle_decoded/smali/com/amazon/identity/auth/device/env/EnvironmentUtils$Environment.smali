.class public final enum Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/env/EnvironmentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

.field public static final enum prod:Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    const/4 v1, 0x0

    const-string/jumbo v2, "prod"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;->prod:Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    aput-object v0, v2, v1

    .line 69
    sput-object v2, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;->$VALUES:[Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;->$VALUES:[Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    return-object v0
.end method
