.class final Lcom/amazon/appexpan/client/deserialization/AppExpanParser$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "AppExpanParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->parseManifest(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
