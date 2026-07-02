.class public abstract Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;
.super Ljava/lang/Object;
.source "IManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;,
        Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;-><init>()V

    return-void
.end method
