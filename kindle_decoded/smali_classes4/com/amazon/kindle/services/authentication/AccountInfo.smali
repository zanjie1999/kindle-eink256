.class public abstract Lcom/amazon/kindle/services/authentication/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.kt"

# interfaces
.implements Lcom/amazon/kindle/services/authentication/IAccountInfo;


# instance fields
.field private final cor:Ljava/lang/String;

.field private final pfm:Ljava/lang/String;

.field private final role:Lcom/amazon/kindle/services/authentication/Role;

.field private final userId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->role:Lcom/amazon/kindle/services/authentication/Role;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->cor:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->pfm:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/AccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowsPeriodicals()Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/AccountInfo;->isRestrictedAccount()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCor()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->cor:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPfm()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->pfm:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/amazon/kindle/services/authentication/Role;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->role:Lcom/amazon/kindle/services/authentication/Role;

    return-object v0
.end method

.method public getUserCOR()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getCor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/AccountInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPFM()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getPfm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRestrictedAccount()Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/AccountInfo;->getRole()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/Role;->CHILD:Lcom/amazon/kindle/services/authentication/Role;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
