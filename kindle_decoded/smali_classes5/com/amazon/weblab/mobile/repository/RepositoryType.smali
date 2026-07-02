.class public final enum Lcom/amazon/weblab/mobile/repository/RepositoryType;
.super Ljava/lang/Enum;
.source "RepositoryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/repository/RepositoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/repository/RepositoryType;

.field public static final enum FILE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

.field public static final enum LAZY:Lcom/amazon/weblab/mobile/repository/RepositoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;

    const/4 v1, 0x0

    const-string v2, "FILE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/weblab/mobile/repository/RepositoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;->FILE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    .line 15
    new-instance v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;

    const/4 v2, 0x1

    const-string v3, "LAZY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/weblab/mobile/repository/RepositoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;->LAZY:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/weblab/mobile/repository/RepositoryType;

    .line 6
    sget-object v4, Lcom/amazon/weblab/mobile/repository/RepositoryType;->FILE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/weblab/mobile/repository/RepositoryType;->$VALUES:[Lcom/amazon/weblab/mobile/repository/RepositoryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/repository/RepositoryType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/repository/RepositoryType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/repository/RepositoryType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;->$VALUES:[Lcom/amazon/weblab/mobile/repository/RepositoryType;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/repository/RepositoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/repository/RepositoryType;

    return-object v0
.end method
