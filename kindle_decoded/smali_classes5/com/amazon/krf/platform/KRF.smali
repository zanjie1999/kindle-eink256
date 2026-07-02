.class public Lcom/amazon/krf/platform/KRF;
.super Ljava/lang/Object;
.source "KRF.java"


# static fields
.field public static final IMAGE_RESOURCE_NOTE_ICON:I = 0x0

.field private static isInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KRFView"

    :try_start_0
    const-string v1, "ft2KRF"

    .line 202
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "fontconfigKRF"

    .line 203
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "icudataamzn"

    .line 204
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "icuucamzn"

    .line 205
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "icui18namzn"

    .line 206
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "icuioamzn"

    .line 207
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "kindlepdf"

    .line 208
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "RSAnalyticsClient"

    .line 209
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "KRFDirect"

    .line 210
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "**************************** LoadLibrary FAILED ***************"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    :try_start_1
    new-instance v1, Lcom/amazon/krf/platform/WebviewPluginFactory;

    invoke-direct {v1}, Lcom/amazon/krf/platform/WebviewPluginFactory;-><init>()V

    invoke-static {v1}, Lcom/amazon/krf/platform/KRF;->addPluginFactory(Lcom/amazon/krf/platform/KRFPluginFactory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "**************************** AddPluginFactory FAILED ***************"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addPluginFactory(Lcom/amazon/krf/platform/KRFPluginFactory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method public static native addResourceBundle(Ljava/lang/String;)V
.end method

.method private static checkInit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 66
    sget-boolean v0, Lcom/amazon/krf/platform/KRF;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/amazon/krf/exception/KRFNotInitializedException;

    invoke-direct {v0}, Lcom/amazon/krf/exception/KRFNotInitializedException;-><init>()V

    throw v0
.end method

.method public static createFragment()Lcom/amazon/krf/platform/KRFFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->checkInit()V

    .line 150
    new-instance v0, Lcom/amazon/krf/platform/KRFFragment;

    invoke-direct {v0}, Lcom/amazon/krf/platform/KRFFragment;-><init>()V

    return-object v0
.end method

.method public static createView(Landroid/content/Context;)Lcom/amazon/krf/platform/KRFView;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->checkInit()V

    .line 139
    new-instance v0, Lcom/amazon/krf/platform/KRFView;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/KRFView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/amazon/krf/platform/KRFView;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->checkInit()V

    .line 126
    new-instance v0, Lcom/amazon/krf/platform/KRFView;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public static native getGlobalVariables()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native getSupportedDRMVoucherVersions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native getVersions()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native initFonts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static initKRF(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 53
    sget-boolean v0, Lcom/amazon/krf/platform/KRF;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/amazon/krf/platform/KRF;->isInit:Z

    .line 56
    invoke-static {p0}, Lcom/amazon/krf/platform/KRF;->loadLibsFromPath(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static native isValidFontFace(Ljava/lang/String;)Z
.end method

.method private static native loadLibsFromPath(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method public static openBook(Ljava/io/File;)Lcom/amazon/krf/platform/KRFBook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->checkInit()V

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0, v0}, Lcom/amazon/krf/platform/KRF;->openBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object p0

    return-object p0
.end method

.method public static openBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;)Lcom/amazon/krf/platform/KRFBook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/krf/platform/KRFBook;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->checkInit()V

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, p2, v0, v0}, Lcom/amazon/krf/platform/KRF;->openBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object p0

    return-object p0
.end method

.method public static openBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/krf/platform/KRFBook;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/amazon/krf/platform/KRFBook;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->checkInit()V

    .line 113
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/krf/internal/KRFBookImpl;->createBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object p0

    return-object p0
.end method

.method public static native removePluginFactory(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method public static native setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native setImageResource(ILjava/lang/String;)V
.end method

.method public static native updateFontConfigCache()Z
.end method
