.class final Lcom/amazon/nwstd/utils/UpsellServiceUtils$1;
.super Ljava/util/HashMap;
.source "UpsellServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/utils/UpsellServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "amazon.com"

    const-string v1, "ATVPDKIKX0DER"

    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "amazon.co.uk"

    const-string v1, "A1F83G8C2ARO7P"

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "amazon.de"

    const-string v1, "A1PA6795UKMFR9"

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
