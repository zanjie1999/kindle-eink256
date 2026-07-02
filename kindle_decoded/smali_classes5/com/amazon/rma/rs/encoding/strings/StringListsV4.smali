.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV4;
.super Ljava/lang/Object;
.source "StringListsV4.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Text"

    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "spanType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "FONT_SIZE"

    const-string v4, "FONT_SIZE_LATIN"

    const-string v5, "COLOR_MODE"

    const-string v6, "SCREEN_BRIGHTNESS"

    const-string v7, "BRIGHTNESS_MODE"

    const-string v8, "LINE_SPACING"

    const-string v9, "LINE_LENGTH"

    const-string v10, "FONT_FACE"

    const-string v11, "COLUMN_COUNT"

    .line 21
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Georgia"

    const-string v4, "Palatino"

    const-string v5, "Baskerville"

    const-string v6, "Lucida Sans"

    const-string v7, "Droid Serif"

    const-string v8, "PMN Caecilia LT"

    const-string v9, "Helvetica Neue WGL"

    const-string/jumbo v10, "publisherfont"

    const-string v11, "BLACK"

    const-string v12, "SEPIA"

    const-string v13, "GREEN"

    const-string v14, "WHITE"

    const-string v15, "NONE"

    const-string v16, "NARROW"

    const-string v17, "WIDE"

    .line 32
    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Book"

    const-string v2, "Reading"

    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV4;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
