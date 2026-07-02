.class public final Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;
.super Ljava/lang/Object;
.source "AssetDownloadRequest.kt"


# static fields
.field private static final NEEDS_SIDECAR_HEADER:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
