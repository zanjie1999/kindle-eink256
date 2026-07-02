.class final Lcom/amazon/versioning/data/enums/KCUPSResponseCode$1;
.super Ljava/util/HashMap;
.source "KCUPSResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/versioning/data/enums/KCUPSResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/versioning/data/enums/KCUPSResponseCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-static {}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->values()[Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
