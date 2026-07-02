.class public final enum Lcom/audible/mobile/identity/AccountPool;
.super Ljava/lang/Enum;
.source "AccountPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/identity/AccountPool;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/identity/AccountPool;

.field public static final enum AMAZON_FE:Lcom/audible/mobile/identity/AccountPool;

.field public static final enum AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

.field public static final enum AUDIBLE_DE:Lcom/audible/mobile/identity/AccountPool;

.field public static final enum AUDIBLE_UK:Lcom/audible/mobile/identity/AccountPool;

.field public static final enum AUDIBLE_US:Lcom/audible/mobile/identity/AccountPool;


# instance fields
.field private final isSharedPool:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/audible/mobile/identity/AccountPool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AMAZON_NA_EU"

    const-string v4, "Amazon"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/audible/mobile/identity/AccountPool;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    .line 14
    new-instance v0, Lcom/audible/mobile/identity/AccountPool;

    const-string v3, "AMAZON_FE"

    const-string v4, "AmazonJP"

    invoke-direct {v0, v3, v1, v4, v1}, Lcom/audible/mobile/identity/AccountPool;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/identity/AccountPool;->AMAZON_FE:Lcom/audible/mobile/identity/AccountPool;

    .line 15
    new-instance v0, Lcom/audible/mobile/identity/AccountPool;

    const/4 v3, 0x2

    const-string v4, "AUDIBLE_US"

    const-string v5, "pool-AF2M0KC94RCEA"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/audible/mobile/identity/AccountPool;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_US:Lcom/audible/mobile/identity/AccountPool;

    .line 16
    new-instance v0, Lcom/audible/mobile/identity/AccountPool;

    const/4 v4, 0x3

    const-string v5, "AUDIBLE_UK"

    const-string v6, "pool-A2I9A3Q2GNFNGQ"

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/audible/mobile/identity/AccountPool;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_UK:Lcom/audible/mobile/identity/AccountPool;

    .line 17
    new-instance v0, Lcom/audible/mobile/identity/AccountPool;

    const/4 v5, 0x4

    const-string v6, "AUDIBLE_DE"

    const-string v7, "pool-AN7V1F1VY261K"

    invoke-direct {v0, v6, v5, v7, v2}, Lcom/audible/mobile/identity/AccountPool;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_DE:Lcom/audible/mobile/identity/AccountPool;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/mobile/identity/AccountPool;

    .line 12
    sget-object v7, Lcom/audible/mobile/identity/AccountPool;->AMAZON_NA_EU:Lcom/audible/mobile/identity/AccountPool;

    aput-object v7, v6, v2

    sget-object v2, Lcom/audible/mobile/identity/AccountPool;->AMAZON_FE:Lcom/audible/mobile/identity/AccountPool;

    aput-object v2, v6, v1

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_US:Lcom/audible/mobile/identity/AccountPool;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/mobile/identity/AccountPool;->AUDIBLE_UK:Lcom/audible/mobile/identity/AccountPool;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/mobile/identity/AccountPool;->$VALUES:[Lcom/audible/mobile/identity/AccountPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/audible/mobile/identity/AccountPool;->value:Ljava/lang/String;

    .line 25
    iput-boolean p4, p0, Lcom/audible/mobile/identity/AccountPool;->isSharedPool:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/identity/AccountPool;
    .locals 1

    .line 12
    const-class v0, Lcom/audible/mobile/identity/AccountPool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/identity/AccountPool;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/identity/AccountPool;
    .locals 1

    .line 12
    sget-object v0, Lcom/audible/mobile/identity/AccountPool;->$VALUES:[Lcom/audible/mobile/identity/AccountPool;

    invoke-virtual {v0}, [Lcom/audible/mobile/identity/AccountPool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/identity/AccountPool;

    return-object v0
.end method
