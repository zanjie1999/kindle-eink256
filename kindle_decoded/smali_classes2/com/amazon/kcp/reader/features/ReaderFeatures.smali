.class public final Lcom/amazon/kcp/reader/features/ReaderFeatures;
.super Ljava/lang/Object;
.source "ReaderFeatures.java"


# static fields
.field public static final MAGNIFYING_GLASS:I

.field public static final ORIENTATION_LOCK:I

.field public static final PDF_THUMBNAIL_SCRUBBER:I

.field private static r:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget v0, Lcom/amazon/kindle/krl/R$bool;->pdf_thumbnail_supported:I

    sput v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->PDF_THUMBNAIL_SCRUBBER:I

    .line 17
    sget v0, Lcom/amazon/kindle/krl/R$bool;->magnifying_glass:I

    sput v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->MAGNIFYING_GLASS:I

    .line 19
    sget v0, Lcom/amazon/kindle/krl/R$bool;->orientation_lock:I

    sput v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->ORIENTATION_LOCK:I

    .line 21
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->r:Landroid/content/res/Resources;

    return-void
.end method

.method public static isFeatureSupported(I)Z
    .locals 1

    .line 29
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->r:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
