.class public final enum Lcom/amazon/kcp/home/debug/WeblabName;
.super Ljava/lang/Enum;
.source "SidekickWeblabManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/home/debug/WeblabName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/home/debug/WeblabName;

.field public static final enum ANDROID_CARD_LIMIT_EXPERIMENT_NAME:Lcom/amazon/kcp/home/debug/WeblabName;

.field public static final enum CARD_ROTATION_DISABLED:Lcom/amazon/kcp/home/debug/WeblabName;

.field public static final enum DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_FOS:Lcom/amazon/kcp/home/debug/WeblabName;

.field public static final enum DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_KFA:Lcom/amazon/kcp/home/debug/WeblabName;

.field public static final enum FOS_CARD_LIMIT_EXPERIMENT_NAME:Lcom/amazon/kcp/home/debug/WeblabName;

.field public static final enum KINDLE_WEBVIEW_ANDROID_ENABLED:Lcom/amazon/kcp/home/debug/WeblabName;


# instance fields
.field private final defaultTreatment:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/kcp/home/debug/WeblabName;

    new-instance v1, Lcom/amazon/kcp/home/debug/WeblabName;

    const/4 v2, 0x0

    const-string v3, "C"

    const-string v4, "ANDROID_CARD_LIMIT_EXPERIMENT_NAME"

    const-string v5, "KINDLE_ANDROID_HOME_CARD_LIMIT_295787"

    .line 16
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/kcp/home/debug/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->ANDROID_CARD_LIMIT_EXPERIMENT_NAME:Lcom/amazon/kcp/home/debug/WeblabName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/WeblabName;

    const/4 v2, 0x1

    const-string v4, "FOS_CARD_LIMIT_EXPERIMENT_NAME"

    const-string v5, "KINDLE_FOS_HOME_CARD_LIMIT_372407"

    .line 17
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/kcp/home/debug/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->FOS_CARD_LIMIT_EXPERIMENT_NAME:Lcom/amazon/kcp/home/debug/WeblabName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/WeblabName;

    const/4 v2, 0x2

    const-string v4, "CARD_ROTATION_DISABLED"

    const-string v5, "SIDEKICK_ANDROID_290106"

    .line 18
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/kcp/home/debug/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->CARD_ROTATION_DISABLED:Lcom/amazon/kcp/home/debug/WeblabName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/WeblabName;

    const/4 v2, 0x3

    const-string v4, "DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_KFA"

    const-string v5, "KINDLE_HOME_CLIENT_KFA_DRAM_COMPLIANT_KSTORE_VALUE_376512"

    .line 19
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/kcp/home/debug/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_KFA:Lcom/amazon/kcp/home/debug/WeblabName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/WeblabName;

    const/4 v2, 0x4

    const-string v4, "DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_FOS"

    const-string v5, "KINDLE_HOME_CLIENT_FOS_DRAM_COMPLIANT_KSTORE_VALUE_377194"

    .line 20
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/kcp/home/debug/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_FOS:Lcom/amazon/kcp/home/debug/WeblabName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/WeblabName;

    const/4 v2, 0x5

    const-string v4, "KINDLE_WEBVIEW_ANDROID_ENABLED"

    const-string v5, "BOOKS_KINDLE_WEBVIEW_ANDROID_HOME_406734"

    .line 21
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/kcp/home/debug/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->KINDLE_WEBVIEW_ANDROID_ENABLED:Lcom/amazon/kcp/home/debug/WeblabName;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/home/debug/WeblabName;->$VALUES:[Lcom/amazon/kcp/home/debug/WeblabName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/home/debug/WeblabName;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/debug/WeblabName;->defaultTreatment:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/debug/WeblabName;
    .locals 1

    const-class v0, Lcom/amazon/kcp/home/debug/WeblabName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/home/debug/WeblabName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/home/debug/WeblabName;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/debug/WeblabName;->$VALUES:[Lcom/amazon/kcp/home/debug/WeblabName;

    invoke-virtual {v0}, [Lcom/amazon/kcp/home/debug/WeblabName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/home/debug/WeblabName;

    return-object v0
.end method


# virtual methods
.method public final getDefaultTreatment()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/WeblabName;->defaultTreatment:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/WeblabName;->value:Ljava/lang/String;

    return-object v0
.end method
