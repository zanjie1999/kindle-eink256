.class public final Lcom/amazon/kindle/services/authentication/TestAccountInfo;
.super Lcom/amazon/kindle/services/authentication/AccountInfo;
.source "TestAccountInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/services/authentication/TestAccountInfo$Companion;
    }
.end annotation


# static fields
.field public static final COR:Ljava/lang/String; = "TestAccountCOR"

.field public static final Companion:Lcom/amazon/kindle/services/authentication/TestAccountInfo$Companion;

.field public static final ID:Ljava/lang/String; = "TestAccountId"

.field public static final PFM:Ljava/lang/String; = "TestAccountPFM"

.field private static final ROLE:Lcom/amazon/kindle/services/authentication/Role;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/services/authentication/TestAccountInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/services/authentication/TestAccountInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TestAccountInfo;->Companion:Lcom/amazon/kindle/services/authentication/TestAccountInfo$Companion;

    .line 18
    sget-object v0, Lcom/amazon/kindle/services/authentication/Role;->ADULT:Lcom/amazon/kindle/services/authentication/Role;

    sput-object v0, Lcom/amazon/kindle/services/authentication/TestAccountInfo;->ROLE:Lcom/amazon/kindle/services/authentication/Role;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/services/authentication/TestAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/services/authentication/TestAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/services/authentication/TestAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/services/authentication/TestAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/AccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, "TestAccountId"

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 12
    sget-object p2, Lcom/amazon/kindle/services/authentication/TestAccountInfo;->ROLE:Lcom/amazon/kindle/services/authentication/Role;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const-string p3, "TestAccountCOR"

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const-string p4, "TestAccountPFM"

    .line 14
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/TestAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getROLE$cp()Lcom/amazon/kindle/services/authentication/Role;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/services/authentication/TestAccountInfo;->ROLE:Lcom/amazon/kindle/services/authentication/Role;

    return-object v0
.end method
