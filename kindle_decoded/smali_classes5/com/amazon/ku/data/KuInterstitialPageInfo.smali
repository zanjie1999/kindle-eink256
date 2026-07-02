.class public Lcom/amazon/ku/data/KuInterstitialPageInfo;
.super Lcom/amazon/bookwizard/service/EmptyResponse;
.source "KuInterstitialPageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;,
        Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;,
        Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;,
        Lcom/amazon/ku/data/KuInterstitialPageInfo$ShowingStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.data.KuInterstitialPageInfo"


# instance fields
.field private assets:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private paths:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paths"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paymentHints:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentHints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shouldUseWebViewSignUp:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldUseWebViewSignUp"
    .end annotation
.end field

.field private showPage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showPage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetsForScreen(Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->assets:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    :goto_0
    return-object p1
.end method

.method public getKuSignUpPath()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->paths:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->KU_SIGN_UP_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getKuStorePath()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->paths:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->KU_STORE_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getReturnPath()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->paths:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->RETURN_PATH:Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuInterstitialPageInfo$Paths;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getReturnedStateName()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->paymentHints:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->RETURNED_STATE_NAME:Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getShowPageStatus()Lcom/amazon/ku/data/KuInterstitialPageInfo$ShowingStatus;
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->showPage:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/ku/data/KuInterstitialPageInfo$ShowingStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuInterstitialPageInfo$ShowingStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the showing status; not showing now"

    invoke-static {v1, v2, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$ShowingStatus;->NO:Lcom/amazon/ku/data/KuInterstitialPageInfo$ShowingStatus;

    return-object v0
.end method

.method public getSuccessState()Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->paymentHints:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->SUCCESS_STATE:Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;

    invoke-virtual {v1}, Lcom/amazon/ku/data/KuInterstitialPageInfo$PaymentHints;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public shouldUseWebViewSignUp()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->shouldUseWebViewSignUp:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->showPage:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->shouldUseWebViewSignUp:Z

    .line 127
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->paths:Ljava/util/Map;

    .line 128
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->paymentHints:Ljava/util/Map;

    .line 129
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/data/KuInterstitialPageInfo;->assets:Ljava/util/Map;

    .line 130
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 131
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
