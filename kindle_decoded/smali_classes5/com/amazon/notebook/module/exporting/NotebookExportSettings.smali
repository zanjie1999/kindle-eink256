.class public Lcom/amazon/notebook/module/exporting/NotebookExportSettings;
.super Ljava/lang/Object;
.source "NotebookExportSettings.java"


# static fields
.field private static final GRAPHICAL_HIGHLIGHT_MAX_WIDTH_BOUND:I = 0xbb8

.field private static volatile exportEnabled:Ljava/lang/Boolean; = null

.field private static volatile exportEnabledOnReflowable:Ljava/lang/Boolean; = null

.field private static volatile graphicalHighlightMaxWidth:I = 0x320

.field private static volatile imageFormat:Landroid/graphics/Bitmap$CompressFormat; = null

.field private static volatile jpegImageQuality:I = 0x3c

.field private static maxMessageSize:J

.field private static volatile selectDialogTocMaxLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->imageFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabled:Ljava/lang/Boolean;

    .line 21
    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabledOnReflowable:Ljava/lang/Boolean;

    const/4 v0, 0x3

    .line 22
    sput v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->selectDialogTocMaxLevel:I

    const-wide/32 v0, 0x500000

    .line 23
    sput-wide v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->maxMessageSize:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGraphicalHighlightMaxWidth()I
    .locals 1

    .line 29
    sget v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->graphicalHighlightMaxWidth:I

    return v0
.end method

.method public static getImageformat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->imageFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static getJpegImageQuality()I
    .locals 1

    .line 36
    sget v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->jpegImageQuality:I

    return v0
.end method

.method public static getMaxMessageSize()J
    .locals 2

    .line 87
    sget-wide v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->maxMessageSize:J

    return-wide v0
.end method

.method public static getSelectDialogTocMaxLevel()I
    .locals 1

    .line 79
    sget v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->selectDialogTocMaxLevel:I

    return v0
.end method

.method public static isExportEnabled()Z
    .locals 3

    .line 50
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 51
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/notebook/module/R$bool;->notebook_export_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabled:Ljava/lang/Boolean;

    .line 54
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isExportEnabledOnReflowable()Z
    .locals 2

    .line 63
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabledOnReflowable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 64
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    const/4 v1, 0x1

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabledOnReflowable:Ljava/lang/Boolean;

    .line 69
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabledOnReflowable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setExportEnabled(Z)V
    .locals 0

    .line 128
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static setExportEnabledOnReflowable(Z)V
    .locals 0

    .line 135
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->exportEnabledOnReflowable:Ljava/lang/Boolean;

    return-void
.end method

.method public static setGraphicalHighlightMaxWidth(I)V
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xbb8

    if-ge p0, v0, :cond_0

    .line 96
    sput p0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->graphicalHighlightMaxWidth:I

    :cond_0
    return-void
.end method

.method public static setImageFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p0, v0, :cond_1

    .line 120
    :cond_0
    sput-object p0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->imageFormat:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    return-void
.end method

.method public static setJpegImageQuality(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    .line 110
    sput p0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->jpegImageQuality:I

    :cond_0
    return-void
.end method

.method public static setSelectDialogTocMaxLevel(I)V
    .locals 0

    .line 144
    sput p0, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->selectDialogTocMaxLevel:I

    return-void
.end method
