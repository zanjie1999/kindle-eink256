.class public final enum Lcom/amazon/ksdk/profiles/BuildType;
.super Ljava/lang/Enum;
.source "BuildType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/profiles/BuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/profiles/BuildType;

.field public static final enum BETA:Lcom/amazon/ksdk/profiles/BuildType;

.field public static final enum DEBUG:Lcom/amazon/ksdk/profiles/BuildType;

.field public static final enum RELEASE:Lcom/amazon/ksdk/profiles/BuildType;

.field public static final enum UNKNOWN:Lcom/amazon/ksdk/profiles/BuildType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/amazon/ksdk/profiles/BuildType;

    const/4 v1, 0x0

    const-string v2, "RELEASE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/profiles/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/BuildType;->RELEASE:Lcom/amazon/ksdk/profiles/BuildType;

    .line 8
    new-instance v0, Lcom/amazon/ksdk/profiles/BuildType;

    const/4 v2, 0x1

    const-string v3, "BETA"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/profiles/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/BuildType;->BETA:Lcom/amazon/ksdk/profiles/BuildType;

    .line 9
    new-instance v0, Lcom/amazon/ksdk/profiles/BuildType;

    const/4 v3, 0x2

    const-string v4, "DEBUG"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/profiles/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/BuildType;->DEBUG:Lcom/amazon/ksdk/profiles/BuildType;

    .line 10
    new-instance v0, Lcom/amazon/ksdk/profiles/BuildType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/profiles/BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/BuildType;->UNKNOWN:Lcom/amazon/ksdk/profiles/BuildType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/ksdk/profiles/BuildType;

    .line 6
    sget-object v6, Lcom/amazon/ksdk/profiles/BuildType;->RELEASE:Lcom/amazon/ksdk/profiles/BuildType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/ksdk/profiles/BuildType;->BETA:Lcom/amazon/ksdk/profiles/BuildType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/ksdk/profiles/BuildType;->DEBUG:Lcom/amazon/ksdk/profiles/BuildType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/ksdk/profiles/BuildType;->$VALUES:[Lcom/amazon/ksdk/profiles/BuildType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/profiles/BuildType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ksdk/profiles/BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/profiles/BuildType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/profiles/BuildType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ksdk/profiles/BuildType;->$VALUES:[Lcom/amazon/ksdk/profiles/BuildType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/profiles/BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/profiles/BuildType;

    return-object v0
.end method
