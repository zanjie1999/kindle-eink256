.class public final Lcom/amazon/kindle/services/authentication/MapAccountInfo;
.super Lcom/amazon/kindle/services/authentication/AccountInfo;
.source "AccountInfo.kt"


# instance fields
.field private final cor:Ljava/lang/String;

.field private final pfm:Ljava/lang/String;

.field private final role:Lcom/amazon/kindle/services/authentication/Role;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/AccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->role:Lcom/amazon/kindle/services/authentication/Role;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->cor:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->pfm:Ljava/lang/String;

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

    .line 61
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/services/authentication/MapAccountInfo;Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/amazon/kindle/services/authentication/MapAccountInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getRole()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getCor()Ljava/lang/String;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getPfm()Ljava/lang/String;

    move-result-object p4

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->copy(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/services/authentication/MapAccountInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/amazon/kindle/services/authentication/Role;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getRole()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getCor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getPfm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/services/authentication/MapAccountInfo;
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/services/authentication/MapAccountInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/services/authentication/MapAccountInfo;

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getRole()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getRole()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getCor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getCor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getPfm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getPfm()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCor()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->cor:Ljava/lang/String;

    return-object v0
.end method

.method public getPfm()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->pfm:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/amazon/kindle/services/authentication/Role;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->role:Lcom/amazon/kindle/services/authentication/Role;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getRole()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getCor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getPfm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapAccountInfo(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getRole()Lcom/amazon/kindle/services/authentication/Role;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getCor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pfm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;->getPfm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
