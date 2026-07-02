.class final enum Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CurrentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

.field public static final enum Binding:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

.field public static final enum Bound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

.field public static final enum Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    const/4 v1, 0x0

    const-string v2, "Unbound"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    const/4 v2, 0x1

    const-string v3, "Binding"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Binding:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    const/4 v3, 0x2

    const-string v4, "Bound"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Bound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    .line 29
    sget-object v5, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Unbound:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->Binding:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->$VALUES:[Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->$VALUES:[Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$CurrentState;

    return-object v0
.end method
