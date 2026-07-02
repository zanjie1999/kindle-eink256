.class public interface abstract Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager;
.super Ljava/lang/Object;
.source "ContentLicenseManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/contentlicense/networking/ContentLicenseManager$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getContentLicense(Lcom/audible/mobile/domain/Asin;Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            ">;",
            "Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;",
            "Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;",
            "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
            "Lcom/audible/mobile/domain/ACR;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZZ)",
            "Lio/reactivex/Single<",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
            ">;"
        }
    .end annotation
.end method
