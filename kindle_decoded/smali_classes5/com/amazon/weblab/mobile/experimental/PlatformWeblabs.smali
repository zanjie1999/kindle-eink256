.class public final enum Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;
.super Ljava/lang/Enum;
.source "PlatformWeblabs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

.field public static final enum MBM_AUTOMATION:Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;


# instance fields
.field private mDefaultTreatment:Ljava/lang/String;

.field private final mUpdateOnlyOnce:Z

.field private mWeblabName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v6, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    const-string v1, "MBM_AUTOMATION"

    const/4 v2, 0x0

    const-string v3, "MBM_AUTOMATION_140447"

    const-string v4, "C_Client"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->MBM_AUTOMATION:Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    .line 12
    sput-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->$VALUES:[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->mWeblabName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->mDefaultTreatment:Ljava/lang/String;

    .line 35
    iput-boolean p5, p0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->mUpdateOnlyOnce:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->$VALUES:[Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;

    return-object v0
.end method


# virtual methods
.method public getDefaultTreatment()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->mDefaultTreatment:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblabName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->mWeblabName:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdateOnlyOnce()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabs;->mUpdateOnlyOnce:Z

    return v0
.end method
