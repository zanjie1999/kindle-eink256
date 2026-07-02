.class public final enum Lcom/amazon/identity/platform/weblab/Weblab;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/platform/weblab/Weblab$Treatment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/platform/weblab/Weblab;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final enum vJ:Lcom/amazon/identity/platform/weblab/Weblab;

.field public static final enum vK:Lcom/amazon/identity/platform/weblab/Weblab;

.field private static final synthetic vL:[Lcom/amazon/identity/platform/weblab/Weblab;


# instance fields
.field private final mDefaultTreatment:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

.field private final mName:Ljava/lang/String;

.field private mOverrideTreatment:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

.field private mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;

.field private mWeblabClient:Lcom/amazon/identity/platform/weblab/MAPWeblabClient;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/amazon/identity/platform/weblab/Weblab;

    sget-object v1, Lcom/amazon/identity/platform/weblab/Weblab$Treatment;->C_Default:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    const/4 v2, 0x0

    const-string v3, "MAP_ANDROID_SECONDARY_PANDA_93840"

    invoke-direct {v0, v3, v2, v3, v1}, Lcom/amazon/identity/platform/weblab/Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/platform/weblab/Weblab$Treatment;)V

    sput-object v0, Lcom/amazon/identity/platform/weblab/Weblab;->vJ:Lcom/amazon/identity/platform/weblab/Weblab;

    .line 18
    new-instance v0, Lcom/amazon/identity/platform/weblab/Weblab;

    sget-object v1, Lcom/amazon/identity/platform/weblab/Weblab$Treatment;->C_Default:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    const/4 v3, 0x1

    const-string v4, "MAP_DUMMY_WEBLAB_FOR_UNIT_TESTS"

    invoke-direct {v0, v4, v3, v4, v1}, Lcom/amazon/identity/platform/weblab/Weblab;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/platform/weblab/Weblab$Treatment;)V

    sput-object v0, Lcom/amazon/identity/platform/weblab/Weblab;->vK:Lcom/amazon/identity/platform/weblab/Weblab;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/identity/platform/weblab/Weblab;

    .line 13
    sget-object v4, Lcom/amazon/identity/platform/weblab/Weblab;->vJ:Lcom/amazon/identity/platform/weblab/Weblab;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/amazon/identity/platform/weblab/Weblab;->vL:[Lcom/amazon/identity/platform/weblab/Weblab;

    .line 25
    const-class v0, Lcom/amazon/identity/platform/weblab/Weblab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/platform/weblab/Weblab;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/platform/weblab/Weblab$Treatment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/platform/weblab/Weblab$Treatment;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mDefaultTreatment:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    .line 38
    new-instance p1, Lcom/amazon/identity/auth/device/eg;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/eg;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mSystemPropertiesWrapper:Lcom/amazon/identity/auth/device/eg;

    return-void
.end method

.method public static eW(Ljava/lang/String;)Lcom/amazon/identity/platform/weblab/Weblab;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/identity/platform/weblab/Weblab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/platform/weblab/Weblab;

    return-object p0
.end method

.method public static iX()[Lcom/amazon/identity/platform/weblab/Weblab;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/identity/platform/weblab/Weblab;->vL:[Lcom/amazon/identity/platform/weblab/Weblab;

    invoke-virtual {v0}, [Lcom/amazon/identity/platform/weblab/Weblab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/platform/weblab/Weblab;

    return-object v0
.end method


# virtual methods
.method public bv(Landroid/content/Context;)Lcom/amazon/identity/platform/weblab/Weblab$Treatment;
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/amazon/identity/platform/weblab/Weblab;->iZ()V

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mOverrideTreatment:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    if-eqz v0, :cond_0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mWeblabClient:Lcom/amazon/identity/platform/weblab/MAPWeblabClient;

    if-nez v0, :cond_2

    .line 80
    sget-object v0, Lcom/amazon/identity/platform/weblab/Weblab;->vJ:Lcom/amazon/identity/platform/weblab/Weblab;

    if-ne p0, v0, :cond_1

    .line 82
    sget-object p1, Lcom/amazon/identity/platform/weblab/Weblab$Treatment;->C:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    return-object p1

    .line 1134
    :cond_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mx;->bp(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mx;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mWeblabClient:Lcom/amazon/identity/platform/weblab/MAPWeblabClient;

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mWeblabClient:Lcom/amazon/identity/platform/weblab/MAPWeblabClient;

    if-eqz p1, :cond_3

    .line 95
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/identity/platform/weblab/MAPWeblabClient;->getTreatmentAndRecordTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/platform/weblab/Weblab$Treatment;->valueOf(Ljava/lang/String;)Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    sget-object v0, Lcom/amazon/identity/platform/weblab/Weblab;->TAG:Ljava/lang/String;

    const-string v1, "Exception when trying to get treatment"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {p0}, Lcom/amazon/identity/platform/weblab/Weblab;->iY()Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_3
    sget-object p1, Lcom/amazon/identity/platform/weblab/Weblab;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileWeblabAndroidClient is not supported, use default treatment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/platform/weblab/Weblab;->iY()Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/identity/platform/weblab/Weblab;->iY()Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public iY()Lcom/amazon/identity/platform/weblab/Weblab$Treatment;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mDefaultTreatment:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    return-object v0
.end method

.method iZ()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/amazon/identity/platform/weblab/Weblab;->mOverrideTreatment:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    return-void
.end method
