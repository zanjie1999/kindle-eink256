.class public final Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;
.super Ljava/lang/Object;
.source "RecapsFeatureSettings.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblabConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;

# The value of this static final field might be set in the static constructor
.field private static final RECAPS_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String; = "NFCX_RECAPS_FOS_EXPT_361686"

# The value of this static final field might be set in the static constructor
.field private static final RECAPS_FOS_LAUNCH_WEBLAB_NAME:Ljava/lang/String; = "NFCX_RECAPS_FOS_LAUNCH_325521"

# The value of this static final field might be set in the static constructor
.field private static final RECAPS_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String; = "NFCX_RECAPS_KFA_EXPT_361683"

# The value of this static final field might be set in the static constructor
.field private static final RECAPS_KFA_LAUNCH_WEBLAB_NAME:Ljava/lang/String; = "NFCX_RECAPS_KFA_LAUNCH_325515"

# The value of this static final field might be set in the static constructor
.field private static final RECAPS_TOOLTIP_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String; = "KINDLE_RECAPS_TOOLTIP_FOS_EXPT_394066"

# The value of this static final field might be set in the static constructor
.field private static final RECAPS_TOOLTIP_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String; = "KINDLE_RECAPS_TOOLTIP_KFA_EXPT_394065"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->Companion:Lcom/amazon/kindle/recaps/RecapsFeatureWebLab$Companion;

    const-string v0, "NFCX_RECAPS_FOS_LAUNCH_325521"

    .line 24
    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_FOS_LAUNCH_WEBLAB_NAME:Ljava/lang/String;

    const-string v0, "NFCX_RECAPS_KFA_LAUNCH_325515"

    .line 25
    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_KFA_LAUNCH_WEBLAB_NAME:Ljava/lang/String;

    const-string v0, "NFCX_RECAPS_FOS_EXPT_361686"

    .line 26
    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String;

    const-string v0, "NFCX_RECAPS_KFA_EXPT_361683"

    .line 27
    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String;

    const-string v0, "KINDLE_RECAPS_TOOLTIP_FOS_EXPT_394066"

    .line 28
    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_TOOLTIP_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String;

    const-string v0, "KINDLE_RECAPS_TOOLTIP_KFA_EXPT_394065"

    .line 29
    sput-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_TOOLTIP_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRECAPS_FOS_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRECAPS_FOS_LAUNCH_WEBLAB_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_FOS_LAUNCH_WEBLAB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRECAPS_KFA_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRECAPS_KFA_LAUNCH_WEBLAB_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_KFA_LAUNCH_WEBLAB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRECAPS_TOOLTIP_FOS_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_TOOLTIP_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRECAPS_TOOLTIP_KFA_EXPT_WEBLAB_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_TOOLTIP_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getKnownWeblabs()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/Pair;

    .line 18
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_FOS_LAUNCH_WEBLAB_NAME:Ljava/lang/String;

    const-string v2, "C"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_KFA_LAUNCH_WEBLAB_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 19
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 20
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_TOOLTIP_KFA_EXPT_WEBLAB_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/recaps/RecapsFeatureWebLab;->RECAPS_TOOLTIP_FOS_EXPT_WEBLAB_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 18
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
