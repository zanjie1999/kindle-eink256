.class public final enum Lcom/amazon/kindle/krx/application/ApplicationFeature;
.super Ljava/lang/Enum;
.source "ApplicationFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/application/ApplicationFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum AUTO_SHELF:Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum NEUTRON_NOTEBOOK_ADDITION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum NEWTRON_NOTEBOOK_ADDITION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum NEWTRON_TOC:Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum ONE_TAP_END_ACTIONS_EXPANDO:Lcom/amazon/kindle/krx/application/ApplicationFeature;

.field public static final enum ONE_TAP_END_ACTIONS_NIS:Lcom/amazon/kindle/krx/application/ApplicationFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v1, 0x0

    const-string v2, "NONLINEAR_NAVIGATION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v2, 0x1

    const-string v3, "AUTO_SHELF"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->AUTO_SHELF:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v3, 0x2

    const-string v4, "ONE_TAP_END_ACTIONS_NIS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->ONE_TAP_END_ACTIONS_NIS:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 32
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v4, 0x3

    const-string v5, "ONE_TAP_END_ACTIONS_EXPANDO"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->ONE_TAP_END_ACTIONS_EXPANDO:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v5, 0x4

    const-string v6, "NEUTRON_PHASE_1"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 44
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v6, 0x5

    const-string v7, "NEUTRON_NOTEBOOK_ADDITION"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_NOTEBOOK_ADDITION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 49
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v7, 0x6

    const-string v8, "NEWTRON_TOC"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEWTRON_TOC:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 54
    new-instance v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/4 v8, 0x7

    const-string v9, "NEWTRON_NOTEBOOK_ADDITION"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/krx/application/ApplicationFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEWTRON_NOTEBOOK_ADDITION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 8
    sget-object v10, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->AUTO_SHELF:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->ONE_TAP_END_ACTIONS_NIS:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->ONE_TAP_END_ACTIONS_EXPANDO:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_NOTEBOOK_ADDITION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEWTRON_TOC:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/krx/application/ApplicationFeature;->$VALUES:[Lcom/amazon/kindle/krx/application/ApplicationFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/application/ApplicationFeature;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/application/ApplicationFeature;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/application/ApplicationFeature;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->$VALUES:[Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/application/ApplicationFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/application/ApplicationFeature;

    return-object v0
.end method
