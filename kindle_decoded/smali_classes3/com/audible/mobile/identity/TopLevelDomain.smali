.class public final enum Lcom/audible/mobile/identity/TopLevelDomain;
.super Ljava/lang/Enum;
.source "TopLevelDomain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/identity/TopLevelDomain;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum CA:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum COM:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum COM_AU:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum CO_JP:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum CO_UK:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum DE:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum ES:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum FR:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum IN:Lcom/audible/mobile/identity/TopLevelDomain;

.field public static final enum IT:Lcom/audible/mobile/identity/TopLevelDomain;


# instance fields
.field private final topLevelDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v1, 0x0

    const-string v2, "COM"

    const-string v3, ".com"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->COM:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v2, 0x1

    const-string v3, "CO_UK"

    const-string v4, ".co.uk"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->CO_UK:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v3, 0x2

    const-string v4, "DE"

    const-string v5, ".de"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->DE:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v4, 0x3

    const-string v5, "COM_AU"

    const-string v6, ".com.au"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->COM_AU:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v5, 0x4

    const-string v6, "FR"

    const-string v7, ".fr"

    invoke-direct {v0, v6, v5, v7}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->FR:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v6, 0x5

    const-string v7, "CO_JP"

    const-string v8, ".co.jp"

    invoke-direct {v0, v7, v6, v8}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->CO_JP:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v7, 0x6

    const-string v8, "IT"

    const-string v9, ".it"

    invoke-direct {v0, v8, v7, v9}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->IT:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/4 v8, 0x7

    const-string v9, "IN"

    const-string v10, ".in"

    invoke-direct {v0, v9, v8, v10}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->IN:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/16 v9, 0x8

    const-string v10, "CA"

    const-string v11, ".ca"

    invoke-direct {v0, v10, v9, v11}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->CA:Lcom/audible/mobile/identity/TopLevelDomain;

    new-instance v0, Lcom/audible/mobile/identity/TopLevelDomain;

    const/16 v10, 0x9

    const-string v11, "ES"

    const-string v12, ".es"

    invoke-direct {v0, v11, v10, v12}, Lcom/audible/mobile/identity/TopLevelDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->ES:Lcom/audible/mobile/identity/TopLevelDomain;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/audible/mobile/identity/TopLevelDomain;

    .line 11
    sget-object v12, Lcom/audible/mobile/identity/TopLevelDomain;->COM:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v12, v11, v1

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->CO_UK:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v2

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->DE:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v3

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->COM_AU:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v4

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->FR:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v5

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->CO_JP:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v6

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->IT:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v7

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->IN:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v8

    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->CA:Lcom/audible/mobile/identity/TopLevelDomain;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/audible/mobile/identity/TopLevelDomain;->$VALUES:[Lcom/audible/mobile/identity/TopLevelDomain;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/audible/mobile/identity/TopLevelDomain;->topLevelDomain:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/identity/TopLevelDomain;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/mobile/identity/TopLevelDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/identity/TopLevelDomain;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/identity/TopLevelDomain;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/mobile/identity/TopLevelDomain;->$VALUES:[Lcom/audible/mobile/identity/TopLevelDomain;

    invoke-virtual {v0}, [Lcom/audible/mobile/identity/TopLevelDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/identity/TopLevelDomain;

    return-object v0
.end method


# virtual methods
.method public getTopLevelDomain()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/audible/mobile/identity/TopLevelDomain;->topLevelDomain:Ljava/lang/String;

    return-object v0
.end method

.method public transformTopLevelDomain(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    const-string v0, "uri cannot be null"

    .line 50
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/audible/mobile/identity/TopLevelDomain;->topLevelDomain:Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/audible/mobile/identity/TopLevelDomain;->COM:Lcom/audible/mobile/identity/TopLevelDomain;

    iget-object v1, v1, Lcom/audible/mobile/identity/TopLevelDomain;->topLevelDomain:Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
