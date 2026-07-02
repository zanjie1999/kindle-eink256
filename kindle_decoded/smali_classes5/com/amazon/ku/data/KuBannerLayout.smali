.class public final enum Lcom/amazon/ku/data/KuBannerLayout;
.super Ljava/lang/Enum;
.source "KuBannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/data/KuBannerLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/data/KuBannerLayout;

.field public static final enum DEFAULT:Lcom/amazon/ku/data/KuBannerLayout;


# instance fields
.field private final layoutResIdNln:I

.field private final layoutResIdOrig:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/amazon/ku/data/KuBannerLayout;

    sget v1, Lcom/amazon/kindle/ku/R$layout;->ku_upsell_bar:I

    sget v2, Lcom/amazon/kindle/ku/R$layout;->ku_upsell_bar_nln:I

    const/4 v3, 0x0

    const-string v4, "DEFAULT"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/amazon/ku/data/KuBannerLayout;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/ku/data/KuBannerLayout;->DEFAULT:Lcom/amazon/ku/data/KuBannerLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/ku/data/KuBannerLayout;

    aput-object v0, v1, v3

    .line 12
    sput-object v1, Lcom/amazon/ku/data/KuBannerLayout;->$VALUES:[Lcom/amazon/ku/data/KuBannerLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/amazon/ku/data/KuBannerLayout;->layoutResIdOrig:I

    .line 31
    iput p4, p0, Lcom/amazon/ku/data/KuBannerLayout;->layoutResIdNln:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuBannerLayout;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ku/data/KuBannerLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuBannerLayout;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/data/KuBannerLayout;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ku/data/KuBannerLayout;->$VALUES:[Lcom/amazon/ku/data/KuBannerLayout;

    invoke-virtual {v0}, [Lcom/amazon/ku/data/KuBannerLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/data/KuBannerLayout;

    return-object v0
.end method


# virtual methods
.method public getResId()I
    .locals 2

    .line 35
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget v0, p0, Lcom/amazon/ku/data/KuBannerLayout;->layoutResIdNln:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amazon/ku/data/KuBannerLayout;->layoutResIdOrig:I

    :goto_0
    return v0
.end method
