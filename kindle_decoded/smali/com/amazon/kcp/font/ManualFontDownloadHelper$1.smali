.class final Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;
.super Ljava/lang/Object;
.source "ManualFontDownloadHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/ManualFontDownloadHelper;->generateFontConfigFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$config:Ljava/io/File;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$pathToDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$pathToDownload:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$language:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$config:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$pathToDownload:Ljava/lang/String;

    const-string/jumbo v2, "system_fonts.xml.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error on deleting temp config file"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<!--\n    System Fonts\n\n    This file lists the font families that will be used by default for all supported glyphs.\n    Each entry consists of a family, various names that are supported by that family, and\n    up to four font files. The font files are listed in the order of the styles which they\n    support: regular, bold, italic and bold-italic. If less than four styles are listed, then\n    the styles with no associated font file will be supported by the other font files listed.\n\n    The first family is also the default font, which handles font request that have not specified\n    specific font names.\n\n    Any glyph that is not handled by the system fonts will cause a search of the fallback fonts.\n    The default fallback fonts are specified in the file /system/etc/fallback_fonts.xml, and there\n    is an optional file which may be supplied by vendors to specify other fallback fonts to use\n    in /vendor/etc/fallback_fonts.xml.\n-->\n<familyset>\n"

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->values()[Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 323
    invoke-static {v5}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->access$100(Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$language:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->fontFileExists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    invoke-virtual {v5}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;->getConfigString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "</familyset>\n"

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$pathToDownload:Ljava/lang/String;

    const-string v3, "%%PATH_TO_FONT_FILES%%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Lcom/amazon/kindle/io/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 331
    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$config:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$config:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 333
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error on deleting config file"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->val$config:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 338
    invoke-static {}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error on renaming config file"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 341
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
