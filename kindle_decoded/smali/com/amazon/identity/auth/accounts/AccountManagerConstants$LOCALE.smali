.class public final enum Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/AccountManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOCALE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field public static final enum CA:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field public static final enum CN:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field public static final enum DE:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field public static final enum ES:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field public static final enum FR:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field public static final enum JP:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field private static final LOCALE_SEPERATOR:Ljava/lang/String; = "-"

.field public static final enum UK:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

.field public static final enum US:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 60
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v1, 0x0

    const-string v2, "US"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->US:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 61
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v2, 0x1

    const-string v3, "DE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->DE:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 62
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v3, 0x2

    const-string v4, "UK"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->UK:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 63
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v4, 0x3

    const-string v5, "JP"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->JP:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 64
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v5, 0x4

    const-string v6, "FR"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->FR:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 65
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v6, 0x5

    const-string v7, "CA"

    invoke-direct {v0, v7, v6}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->CA:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 66
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v7, 0x6

    const-string v8, "ES"

    invoke-direct {v0, v8, v7}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->ES:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 67
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/4 v8, 0x7

    const-string v9, "CN"

    invoke-direct {v0, v9, v8}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->CN:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    .line 58
    sget-object v10, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->US:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->DE:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->UK:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->JP:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->FR:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->CA:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->ES:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->$VALUES:[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;
    .locals 1

    .line 58
    const-class v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->$VALUES:[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    return-object v0
.end method


# virtual methods
.method public toUrlString()Ljava/lang/String;
    .locals 3

    .line 74
    sget-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;->US:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$LOCALE;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
