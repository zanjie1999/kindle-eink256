.class public Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException;
.super Ljava/lang/Exception;
.source "PublicKeyDecompressionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Couldn\'t decompress public key from Barcode"

    .line 8
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
