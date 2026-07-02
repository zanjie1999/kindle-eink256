.class public Lcom/amazon/ku/data/KuBannerInfo;
.super Lcom/amazon/bookwizard/service/EmptyResponse;
.source "KuBannerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.data.KuBannerInfo"


# instance fields
.field private assets:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assets"
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

.field private kuSignUpPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kuSignUpPath"
    .end annotation
.end field

.field private layoutId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "layoutId"
    .end annotation
.end field

.field private showBanner:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showBanner"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->assets:Ljava/util/Map;

    return-object v0
.end method

.method public getBannerShownStatus()Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->showBanner:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/amazon/ku/data/KuBannerInfo;->TAG:Ljava/lang/String;

    const-string v2, "Could not parse showBanner; not showing for now"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    sget-object v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->NO:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    return-object v0
.end method

.method public getKuSignUpPath()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->kuSignUpPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lcom/amazon/ku/data/KuBannerLayout;
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->layoutId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/ku/data/KuBannerLayout;->valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuBannerLayout;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 45
    sget-object v1, Lcom/amazon/ku/data/KuBannerInfo;->TAG:Ljava/lang/String;

    const-string v2, "Could not parse layoutId, using default layout"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    sget-object v0, Lcom/amazon/ku/data/KuBannerLayout;->DEFAULT:Lcom/amazon/ku/data/KuBannerLayout;

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/amazon/ku/data/KuBannerInfo;->getBannerShownStatus()Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->YES:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->layoutId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->assets:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->assets:Ljava/util/Map;

    sget-object v3, Lcom/amazon/ku/data/KuBannerAsset;->TITLE_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

    invoke-virtual {v3}, Lcom/amazon/ku/data/KuBannerAsset;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/ku/data/KuBannerInfo;->assets:Ljava/util/Map;

    sget-object v3, Lcom/amazon/ku/data/KuBannerAsset;->BUTTON_TEXT:Lcom/amazon/ku/data/KuBannerAsset;

    .line 89
    invoke-virtual {v3}, Lcom/amazon/ku/data/KuBannerAsset;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KuBannerInfo{layoutId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/data/KuBannerInfo;->layoutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ku/data/KuBannerInfo;->assets:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showBanner=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ku/data/KuBannerInfo;->showBanner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", kuSignUpPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ku/data/KuBannerInfo;->kuSignUpPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
