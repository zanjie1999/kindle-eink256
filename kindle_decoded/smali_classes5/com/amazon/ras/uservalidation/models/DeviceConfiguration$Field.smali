.class public final enum Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

.field public static final enum ENABLED:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

.field public static final enum ENDPOINT:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

.field public static final enum PROFILE_LINK:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    const/4 v1, 0x0

    const-string v2, "ENABLED"

    const-string v3, "enabled"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENABLED:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    new-instance v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    const/4 v2, 0x1

    const-string v3, "ENDPOINT"

    const-string v4, "endpoint"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENDPOINT:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    new-instance v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    const/4 v3, 0x2

    const-string v4, "PROFILE_LINK"

    const-string/jumbo v5, "profile_link"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->PROFILE_LINK:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    .line 8
    sget-object v5, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENABLED:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->ENDPOINT:Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->$VALUES:[Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->$VALUES:[Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    invoke-virtual {v0}, [Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration$Field;->name:Ljava/lang/String;

    return-object v0
.end method
