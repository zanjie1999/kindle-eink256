.class Lcom/amazon/ku/service/KuBannerInfoDownloadRequest$KuBannerInfoRequestBody;
.super Ljava/lang/Object;
.source "KuBannerInfoDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KuBannerInfoRequestBody"
.end annotation


# instance fields
.field validLayoutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/ku/ScreenSize;)V
    .locals 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest$KuBannerInfoRequestBody;->validLayoutIds:Ljava/util/List;

    .line 82
    invoke-static {}, Lcom/amazon/ku/data/KuBannerLayout;->values()[Lcom/amazon/ku/data/KuBannerLayout;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 83
    iget-object v3, p0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest$KuBannerInfoRequestBody;->validLayoutIds:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    return-void
.end method
