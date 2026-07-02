.class public final Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;
.super Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;
.source "IManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final payload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;->payload:Ljava/lang/String;

    return-object v0
.end method
