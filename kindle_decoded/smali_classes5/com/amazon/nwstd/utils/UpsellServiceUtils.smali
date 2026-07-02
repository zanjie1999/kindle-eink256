.class public Lcom/amazon/nwstd/utils/UpsellServiceUtils;
.super Ljava/lang/Object;
.source "UpsellServiceUtils.java"


# static fields
.field private static final mSupportedPFMUpsell:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/nwstd/utils/UpsellServiceUtils$1;

    invoke-direct {v0}, Lcom/amazon/nwstd/utils/UpsellServiceUtils$1;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/utils/UpsellServiceUtils;->mSupportedPFMUpsell:Ljava/util/HashMap;

    return-void
.end method

.method public static isSupportedPFMUpsell(Ljava/lang/String;)Z
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/nwstd/utils/UpsellServiceUtils;->mSupportedPFMUpsell:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
