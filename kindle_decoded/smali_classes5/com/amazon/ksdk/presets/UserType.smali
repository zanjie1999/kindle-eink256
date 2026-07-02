.class public final enum Lcom/amazon/ksdk/presets/UserType;
.super Ljava/lang/Enum;
.source "UserType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/UserType;

.field public static final enum CHILD:Lcom/amazon/ksdk/presets/UserType;

.field public static final enum GUEST:Lcom/amazon/ksdk/presets/UserType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/UserType;

.field public static final enum PRIMARY:Lcom/amazon/ksdk/presets/UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/UserType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/UserType;->INVALID:Lcom/amazon/ksdk/presets/UserType;

    .line 17
    new-instance v0, Lcom/amazon/ksdk/presets/UserType;

    const/4 v2, 0x1

    const-string v3, "PRIMARY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/UserType;->PRIMARY:Lcom/amazon/ksdk/presets/UserType;

    .line 19
    new-instance v0, Lcom/amazon/ksdk/presets/UserType;

    const/4 v3, 0x2

    const-string v4, "CHILD"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/UserType;->CHILD:Lcom/amazon/ksdk/presets/UserType;

    .line 21
    new-instance v0, Lcom/amazon/ksdk/presets/UserType;

    const/4 v4, 0x3

    const-string v5, "GUEST"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/UserType;->GUEST:Lcom/amazon/ksdk/presets/UserType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/ksdk/presets/UserType;

    .line 13
    sget-object v6, Lcom/amazon/ksdk/presets/UserType;->INVALID:Lcom/amazon/ksdk/presets/UserType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/ksdk/presets/UserType;->PRIMARY:Lcom/amazon/ksdk/presets/UserType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/ksdk/presets/UserType;->CHILD:Lcom/amazon/ksdk/presets/UserType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/ksdk/presets/UserType;->$VALUES:[Lcom/amazon/ksdk/presets/UserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/UserType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/ksdk/presets/UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/UserType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/UserType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/ksdk/presets/UserType;->$VALUES:[Lcom/amazon/ksdk/presets/UserType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/UserType;

    return-object v0
.end method
