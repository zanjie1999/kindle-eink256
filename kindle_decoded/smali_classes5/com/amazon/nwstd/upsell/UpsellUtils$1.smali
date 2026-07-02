.class final Lcom/amazon/nwstd/upsell/UpsellUtils$1;
.super Ljava/util/ArrayList;
.source "UpsellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/UpsellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "B00FDWVIHO"

    .line 75
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
