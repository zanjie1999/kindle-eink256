.class synthetic Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory$1;
.super Ljava/lang/Object;
.source "BrochureAssetDownloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$info$brochure$BrochureAssetContent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    invoke-static {}, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->values()[Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory$1;->$SwitchMap$com$amazon$kcp$info$brochure$BrochureAssetContent:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->TEXT_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory$1;->$SwitchMap$com$amazon$kcp$info$brochure$BrochureAssetContent:[I

    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->IMAGE_SHAREABLE:Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
