.class final enum Lcom/amazon/discovery/DependencyType;
.super Ljava/lang/Enum;
.source "DependencyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/discovery/DependencyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/discovery/DependencyType;

.field public static final enum DISCOVERIES:Lcom/amazon/discovery/DependencyType;

.field public static final enum OPTIONAL_UNIQUE:Lcom/amazon/discovery/DependencyType;

.field public static final enum REQUIRED_UNIQUE:Lcom/amazon/discovery/DependencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/amazon/discovery/DependencyType;

    const/4 v1, 0x0

    const-string v2, "REQUIRED_UNIQUE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/discovery/DependencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/discovery/DependencyType;->REQUIRED_UNIQUE:Lcom/amazon/discovery/DependencyType;

    .line 14
    new-instance v0, Lcom/amazon/discovery/DependencyType;

    const/4 v2, 0x1

    const-string v3, "OPTIONAL_UNIQUE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/discovery/DependencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/discovery/DependencyType;->OPTIONAL_UNIQUE:Lcom/amazon/discovery/DependencyType;

    .line 18
    new-instance v0, Lcom/amazon/discovery/DependencyType;

    const/4 v3, 0x2

    const-string v4, "DISCOVERIES"

    invoke-direct {v0, v4, v3}, Lcom/amazon/discovery/DependencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/discovery/DependencyType;->DISCOVERIES:Lcom/amazon/discovery/DependencyType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/discovery/DependencyType;

    .line 6
    sget-object v5, Lcom/amazon/discovery/DependencyType;->REQUIRED_UNIQUE:Lcom/amazon/discovery/DependencyType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/discovery/DependencyType;->OPTIONAL_UNIQUE:Lcom/amazon/discovery/DependencyType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/discovery/DependencyType;->$VALUES:[Lcom/amazon/discovery/DependencyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/discovery/DependencyType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/discovery/DependencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/discovery/DependencyType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/discovery/DependencyType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/discovery/DependencyType;->$VALUES:[Lcom/amazon/discovery/DependencyType;

    invoke-virtual {v0}, [Lcom/amazon/discovery/DependencyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/discovery/DependencyType;

    return-object v0
.end method
