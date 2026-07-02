.class public final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;
.super Ljava/lang/Object;
.source "ManifestDownloadJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-static {}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
