.class public final enum Lcom/amazon/kindle/krx/application/AppType;
.super Ljava/lang/Enum;
.source "AppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/application/AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/application/AppType;

.field public static final enum CMX:Lcom/amazon/kindle/krx/application/AppType;

.field public static final enum KFA:Lcom/amazon/kindle/krx/application/AppType;

.field public static final enum KFC:Lcom/amazon/kindle/krx/application/AppType;

.field public static final enum KFE:Lcom/amazon/kindle/krx/application/AppType;

.field public static final enum KFS:Lcom/amazon/kindle/krx/application/AppType;

.field public static final enum KRT:Lcom/amazon/kindle/krx/application/AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/amazon/kindle/krx/application/AppType;

    const/4 v1, 0x0

    const-string v2, "KFA"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/application/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/application/AppType;

    const/4 v2, 0x1

    const-string v3, "KFS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/application/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/AppType;->KFS:Lcom/amazon/kindle/krx/application/AppType;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/application/AppType;

    const/4 v3, 0x2

    const-string v4, "KFC"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/application/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/application/AppType;

    const/4 v4, 0x3

    const-string v5, "KRT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/application/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/application/AppType;

    const/4 v5, 0x4

    const-string v6, "KFE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/application/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/AppType;->KFE:Lcom/amazon/kindle/krx/application/AppType;

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/application/AppType;

    const/4 v6, 0x5

    const-string v7, "CMX"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/application/AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/AppType;->CMX:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/krx/application/AppType;

    .line 6
    sget-object v8, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFS:Lcom/amazon/kindle/krx/application/AppType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFE:Lcom/amazon/kindle/krx/application/AppType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/krx/application/AppType;->$VALUES:[Lcom/amazon/kindle/krx/application/AppType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/application/AppType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kindle/krx/application/AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/application/AppType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/application/AppType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->$VALUES:[Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/application/AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/application/AppType;

    return-object v0
.end method
