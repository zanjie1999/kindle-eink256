.class public final Lcom/amazon/kindle/services/authentication/DefaultAccount;
.super Lcom/amazon/kindle/services/authentication/AccountInfo;
.source "AccountInfo.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/services/authentication/DefaultAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/amazon/kindle/services/authentication/DefaultAccount;

    invoke-direct {v0}, Lcom/amazon/kindle/services/authentication/DefaultAccount;-><init>()V

    sput-object v0, Lcom/amazon/kindle/services/authentication/DefaultAccount;->INSTANCE:Lcom/amazon/kindle/services/authentication/DefaultAccount;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 45
    sget-object v2, Lcom/amazon/kindle/services/authentication/Role;->ADULT:Lcom/amazon/kindle/services/authentication/Role;

    const-string v1, "MASTER"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/services/authentication/AccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/services/authentication/DefaultAccount;->INSTANCE:Lcom/amazon/kindle/services/authentication/DefaultAccount;

    return-object v0
.end method

.method public static final isDefaultAccount(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kindle/services/authentication/DefaultAccount;->INSTANCE:Lcom/amazon/kindle/services/authentication/DefaultAccount;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
