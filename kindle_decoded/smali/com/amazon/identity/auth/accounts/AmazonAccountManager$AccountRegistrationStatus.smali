.class public final enum Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/AmazonAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountRegistrationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

.field public static final enum Deregistering:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

.field public static final enum NotFound:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

.field public static final enum Registered:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    const/4 v1, 0x0

    const-string v2, "Registered"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Registered:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    const/4 v2, 0x1

    const-string v3, "Deregistering"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Deregistering:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    const/4 v3, 0x2

    const-string v4, "NotFound"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->NotFound:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    .line 22
    sget-object v5, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Registered:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Deregistering:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->$VALUES:[Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;
    .locals 5

    .line 43
    invoke-static {}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->values()[Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->$VALUES:[Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->mValue:Ljava/lang/String;

    return-object v0
.end method
