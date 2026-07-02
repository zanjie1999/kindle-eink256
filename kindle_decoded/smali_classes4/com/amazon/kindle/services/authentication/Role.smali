.class public final enum Lcom/amazon/kindle/services/authentication/Role;
.super Ljava/lang/Enum;
.source "AccountInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/authentication/Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/authentication/Role;

.field public static final enum ADULT:Lcom/amazon/kindle/services/authentication/Role;

.field public static final enum CHILD:Lcom/amazon/kindle/services/authentication/Role;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/services/authentication/Role;

    new-instance v1, Lcom/amazon/kindle/services/authentication/Role;

    const/4 v2, 0x0

    const-string v3, "CHILD"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/services/authentication/Role;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/services/authentication/Role;->CHILD:Lcom/amazon/kindle/services/authentication/Role;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/services/authentication/Role;

    const/4 v2, 0x1

    const-string v3, "ADULT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/services/authentication/Role;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/services/authentication/Role;->ADULT:Lcom/amazon/kindle/services/authentication/Role;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/services/authentication/Role;->$VALUES:[Lcom/amazon/kindle/services/authentication/Role;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/authentication/Role;
    .locals 1

    const-class v0, Lcom/amazon/kindle/services/authentication/Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/authentication/Role;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/authentication/Role;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/services/authentication/Role;->$VALUES:[Lcom/amazon/kindle/services/authentication/Role;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/authentication/Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/authentication/Role;

    return-object v0
.end method
