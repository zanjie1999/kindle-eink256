.class Lcom/amazon/ku/KuBannerInfoManager$InstanceHolder;
.super Ljava/lang/Object;
.source "KuBannerInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/KuBannerInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/amazon/ku/KuBannerInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/amazon/ku/KuBannerInfoManager;

    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/ku/KuBannerInfoManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/ku/KuBannerInfoManager$1;)V

    sput-object v0, Lcom/amazon/ku/KuBannerInfoManager$InstanceHolder;->instance:Lcom/amazon/ku/KuBannerInfoManager;

    return-void
.end method
