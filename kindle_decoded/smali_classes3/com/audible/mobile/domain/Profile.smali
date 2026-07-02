.class public final enum Lcom/audible/mobile/domain/Profile;
.super Ljava/lang/Enum;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/Profile;

.field public static final enum ep5:Lcom/audible/mobile/domain/Profile;

.field public static final enum ep6:Lcom/audible/mobile/domain/Profile;

.field public static final enum ep7:Lcom/audible/mobile/domain/Profile;

.field public static final enum ep8:Lcom/audible/mobile/domain/Profile;

.field public static final enum ep9:Lcom/audible/mobile/domain/Profile;

.field public static final enum mp332:Lcom/audible/mobile/domain/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/audible/mobile/domain/Profile;

    const/4 v1, 0x0

    const-string v2, "mp332"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/domain/Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Profile;->mp332:Lcom/audible/mobile/domain/Profile;

    new-instance v0, Lcom/audible/mobile/domain/Profile;

    const/4 v2, 0x1

    const-string v3, "ep5"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/domain/Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Profile;->ep5:Lcom/audible/mobile/domain/Profile;

    new-instance v0, Lcom/audible/mobile/domain/Profile;

    const/4 v3, 0x2

    const-string v4, "ep6"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/domain/Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Profile;->ep6:Lcom/audible/mobile/domain/Profile;

    new-instance v0, Lcom/audible/mobile/domain/Profile;

    const/4 v4, 0x3

    const-string v5, "ep7"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/domain/Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Profile;->ep7:Lcom/audible/mobile/domain/Profile;

    new-instance v0, Lcom/audible/mobile/domain/Profile;

    const/4 v5, 0x4

    const-string v6, "ep8"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/domain/Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Profile;->ep8:Lcom/audible/mobile/domain/Profile;

    new-instance v0, Lcom/audible/mobile/domain/Profile;

    const/4 v6, 0x5

    const-string v7, "ep9"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/domain/Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/Profile;->ep9:Lcom/audible/mobile/domain/Profile;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/mobile/domain/Profile;

    .line 7
    sget-object v8, Lcom/audible/mobile/domain/Profile;->mp332:Lcom/audible/mobile/domain/Profile;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/mobile/domain/Profile;->ep5:Lcom/audible/mobile/domain/Profile;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/mobile/domain/Profile;->ep6:Lcom/audible/mobile/domain/Profile;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/mobile/domain/Profile;->ep7:Lcom/audible/mobile/domain/Profile;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/mobile/domain/Profile;->ep8:Lcom/audible/mobile/domain/Profile;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/mobile/domain/Profile;->$VALUES:[Lcom/audible/mobile/domain/Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Profile;
    .locals 1

    .line 7
    const-class v0, Lcom/audible/mobile/domain/Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/Profile;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/Profile;
    .locals 1

    .line 7
    sget-object v0, Lcom/audible/mobile/domain/Profile;->$VALUES:[Lcom/audible/mobile/domain/Profile;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/Profile;

    return-object v0
.end method
