.class public interface abstract Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;
.super Ljava/lang/Object;
.source "IManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;,
        Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;,
        Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;,
        Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;,
        Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;->$$INSTANCE:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;

    sput-object v0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->Companion:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Companion;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;
.end method

.method public abstract getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;
.end method

.method public abstract getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;
.end method

.method public abstract getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;
.end method

.method public abstract start()Z
.end method
