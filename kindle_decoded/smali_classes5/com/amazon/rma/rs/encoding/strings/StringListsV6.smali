.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV6;
.super Ljava/lang/Object;
.source "StringListsV6.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 30

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

    const-string v4, "COLOR_MODE"

    const-string v5, "SCREEN_BRIGHTNESS"

    const-string v6, "BRIGHTNESS_MODE"

    const-string v7, "LINE_SPACING"

    const-string v8, "LINE_LENGTH"

    const-string v9, "FONT_FACE"

    const-string v10, "FONT_FACE_LATIN"

    const-string v11, "FONT_FACE_CN"

    const-string v12, "FONT_FACE_JA"

    const-string v13, "COLUMN_COUNT"

    .line 21
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "monospace"

    const-string/jumbo v4, "sans-serif"

    const-string/jumbo v5, "serif"

    const-string/jumbo v6, "publisherfont"

    const-string v7, "Bookerly"

    const-string v8, "Caecilia Regular"

    const-string v9, "Georgia"

    const-string v10, "Palatino"

    const-string v11, "Baskerville"

    const-string v12, "Helvetica"

    const-string v13, "Helvetica Neue Regular"

    const-string v14, "Helvetica Neue Light"

    const-string v15, "Lucidia Sans"

    const-string v16, "STBShusong"

    const-string v17, "MYing Hei S"

    const-string v18, "STKaiti"

    const-string v19, "STZhongyuan"

    const-string v20, "TBGothic"

    const-string v21, "TBMincho"

    const-string v22, "TsukushiMincho"

    const-string v23, "BLACK"

    const-string v24, "SEPIA"

    const-string v25, "GREEN"

    const-string v26, "WHITE"

    const-string v27, "NONE"

    const-string v28, "NARROW"

    const-string v29, "WIDE"

    .line 34
    filled-new-array/range {v3 .. v29}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Book"

    const-string v2, "Reading"

    .line 63
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV6;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
