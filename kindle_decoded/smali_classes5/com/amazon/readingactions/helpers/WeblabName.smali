.class public final enum Lcom/amazon/readingactions/helpers/WeblabName;
.super Ljava/lang/Enum;
.source "ReadingActionsWeblabManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/readingactions/helpers/WeblabName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/readingactions/helpers/WeblabName;

.field public static final enum LAUNCH_START_ACTIONS_TIME_TO_READ_VARIANT:Lcom/amazon/readingactions/helpers/WeblabName;

.field public static final enum START_ACTIONS_TIME_TO_READ_VARIANT:Lcom/amazon/readingactions/helpers/WeblabName;

.field public static final enum START_ACTIONS_TIME_TO_READ_VARIANT_BETA:Lcom/amazon/readingactions/helpers/WeblabName;


# instance fields
.field private final defaultTreatment:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/readingactions/helpers/WeblabName;

    new-instance v1, Lcom/amazon/readingactions/helpers/WeblabName;

    const/4 v2, 0x0

    const-string v3, "C"

    const-string v4, "LAUNCH_START_ACTIONS_TIME_TO_READ_VARIANT"

    const-string v5, "MADREAD_RA_BSE_VARIANT_TTR_ANDROID_GAT_390167"

    .line 15
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/readingactions/helpers/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/readingactions/helpers/WeblabName;->LAUNCH_START_ACTIONS_TIME_TO_READ_VARIANT:Lcom/amazon/readingactions/helpers/WeblabName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/WeblabName;

    const/4 v2, 0x1

    const-string v4, "START_ACTIONS_TIME_TO_READ_VARIANT"

    const-string v5, "MADREAD_RA_BSE_VARIANT_TTR_ANDROID_EXP_390164"

    .line 16
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/readingactions/helpers/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/readingactions/helpers/WeblabName;->START_ACTIONS_TIME_TO_READ_VARIANT:Lcom/amazon/readingactions/helpers/WeblabName;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/WeblabName;

    const/4 v2, 0x2

    const-string v4, "START_ACTIONS_TIME_TO_READ_VARIANT_BETA"

    const-string v5, "MADREAD_RA_BSE_VARIANT_TTR_ANDROID_BETA_390163"

    .line 17
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/amazon/readingactions/helpers/WeblabName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/readingactions/helpers/WeblabName;->START_ACTIONS_TIME_TO_READ_VARIANT_BETA:Lcom/amazon/readingactions/helpers/WeblabName;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/readingactions/helpers/WeblabName;->$VALUES:[Lcom/amazon/readingactions/helpers/WeblabName;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTreatment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/readingactions/helpers/WeblabName;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/readingactions/helpers/WeblabName;->defaultTreatment:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/readingactions/helpers/WeblabName;
    .locals 1

    const-class v0, Lcom/amazon/readingactions/helpers/WeblabName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/readingactions/helpers/WeblabName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/readingactions/helpers/WeblabName;
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabName;->$VALUES:[Lcom/amazon/readingactions/helpers/WeblabName;

    invoke-virtual {v0}, [Lcom/amazon/readingactions/helpers/WeblabName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/readingactions/helpers/WeblabName;

    return-object v0
.end method


# virtual methods
.method public final getDefaultTreatment()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/WeblabName;->defaultTreatment:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/WeblabName;->value:Ljava/lang/String;

    return-object v0
.end method
