.class public Lcom/amazon/kcp/font/FontConfigParser;
.super Ljava/lang/Object;
.source "FontConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_INDEX:Ljava/lang/String; = "index"

.field private static final ATTRIBUTE_LANG:Ljava/lang/String; = "lang"

.field private static final FALLBACK_FONT_XML:Ljava/io/File;

.field private static final FONT_XML:Ljava/io/File;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_FAMILY:Ljava/lang/String; = "family"

.field private static final TAG_FAMILY_SET:Ljava/lang/String; = "familyset"

.field private static final TAG_FILE:Ljava/lang/String; = "file"

.field private static final TAG_FONT:Ljava/lang/String; = "font"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/amazon/kcp/font/FontConfigParser;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/FontConfigParser;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/fonts.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/FontConfigParser;->FONT_XML:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/fallback_fonts.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/FontConfigParser;->FALLBACK_FONT_XML:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseFallbackFontXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string v2, "familyset"

    const/4 v3, 0x2

    .line 147
    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v2, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;-><init>(Lcom/amazon/kcp/font/FontConfigParser;)V

    const/4 v4, 0x0

    .line 154
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    move-object v6, v1

    :goto_0
    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    .line 155
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eq v5, v3, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    .line 173
    sget-object v7, Lcom/amazon/kcp/font/FontConfigParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Detected invalid event type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_3

    .line 166
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;

    const/4 v4, -0x1

    .line 168
    iput v4, v2, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->index:I

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v1

    goto :goto_1

    :cond_2
    const-string v5, "file"

    .line 158
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "lang"

    .line 159
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    .line 154
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 180
    :cond_5
    :goto_2
    iget-object p2, v2, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    .line 186
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v2

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 187
    throw p2
.end method

.method private parseFontXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 69
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    move-object/from16 v3, p1

    .line 70
    :try_start_1
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 71
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string v4, "familyset"

    const/4 v5, 0x2

    .line 72
    invoke-interface {v1, v5, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v4, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v6, p0

    :try_start_2
    invoke-direct {v4, v6}, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;-><init>(Lcom/amazon/kcp/font/FontConfigParser;)V

    .line 81
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v10, v2

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-eq v7, v14, :cond_7

    .line 82
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    if-eq v7, v5, :cond_2

    const/4 v15, 0x3

    if-eq v7, v15, :cond_1

    const/4 v15, 0x4

    if-eq v7, v15, :cond_0

    .line 109
    sget-object v14, Lcom/amazon/kcp/font/FontConfigParser;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected invalid event type "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " while parsing font XML"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    if-eqz v10, :cond_5

    .line 102
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v11, :cond_5

    .line 103
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;

    .line 104
    iput v12, v4, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->index:I

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    move-object v10, v2

    const/4 v11, 0x0

    const/4 v12, -0x1

    goto :goto_2

    :cond_2
    const-string v5, "family"

    .line 85
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "lang"

    .line 86
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_3
    const-string v5, "font"

    .line 87
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v10, :cond_5

    .line 88
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "index"

    .line 89
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v12, -0x1

    goto :goto_1

    .line 90
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v12, v5

    :goto_1
    const/4 v11, 0x1

    :cond_5
    :goto_2
    if-eqz v13, :cond_6

    goto :goto_3

    .line 81
    :cond_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 116
    :cond_7
    :goto_3
    iget-object v0, v4, Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;->fileName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    .line 122
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    return-object v4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v3, p1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 123
    throw v0
.end method


# virtual methods
.method public getFontFamily(Ljava/lang/String;)Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/amazon/kcp/font/FontConfigParser;->FONT_XML:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/amazon/kcp/font/FontConfigParser;->FONT_XML:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/font/FontConfigParser;->parseFontXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    sget-object v0, Lcom/amazon/kcp/font/FontConfigParser;->FALLBACK_FONT_XML:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/amazon/kcp/font/FontConfigParser;->FALLBACK_FONT_XML:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/font/FontConfigParser;->parseFallbackFontXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
