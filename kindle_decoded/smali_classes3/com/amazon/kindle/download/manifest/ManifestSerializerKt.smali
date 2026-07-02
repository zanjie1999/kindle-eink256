.class public final Lcom/amazon/kindle/download/manifest/ManifestSerializerKt;
.super Ljava/lang/Object;
.source "ManifestSerializer.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestSerializerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestSerializerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
