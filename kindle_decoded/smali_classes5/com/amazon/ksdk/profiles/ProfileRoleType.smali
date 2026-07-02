.class public final enum Lcom/amazon/ksdk/profiles/ProfileRoleType;
.super Ljava/lang/Enum;
.source "ProfileRoleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/profiles/ProfileRoleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/profiles/ProfileRoleType;

.field public static final enum ADULT:Lcom/amazon/ksdk/profiles/ProfileRoleType;

.field public static final enum CHILD:Lcom/amazon/ksdk/profiles/ProfileRoleType;

.field public static final enum TEEN:Lcom/amazon/ksdk/profiles/ProfileRoleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;

    const/4 v1, 0x0

    const-string v2, "ADULT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/profiles/ProfileRoleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;->ADULT:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    .line 8
    new-instance v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;

    const/4 v2, 0x1

    const-string v3, "CHILD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/profiles/ProfileRoleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;->CHILD:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    .line 9
    new-instance v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;

    const/4 v3, 0x2

    const-string v4, "TEEN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/profiles/ProfileRoleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;->TEEN:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ksdk/profiles/ProfileRoleType;

    .line 6
    sget-object v5, Lcom/amazon/ksdk/profiles/ProfileRoleType;->ADULT:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ksdk/profiles/ProfileRoleType;->CHILD:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ksdk/profiles/ProfileRoleType;->$VALUES:[Lcom/amazon/ksdk/profiles/ProfileRoleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/profiles/ProfileRoleType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/profiles/ProfileRoleType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/profiles/ProfileRoleType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ksdk/profiles/ProfileRoleType;->$VALUES:[Lcom/amazon/ksdk/profiles/ProfileRoleType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/profiles/ProfileRoleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/profiles/ProfileRoleType;

    return-object v0
.end method
