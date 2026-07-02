.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV7;
.super Ljava/lang/Object;
.source "StringListsV7.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Text"

    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "spanType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ColumnCount"

    const-string v4, "FontFace"

    const-string v5, "FontSize"

    const-string v6, "MarginSize"

    const-string v7, "LineSpacing"

    const-string v8, "ColorMode"

    const-string v9, "Brightness"

    .line 21
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "White"

    const-string v4, "Black"

    const-string v5, "Sepia"

    const-string v6, "Baskerville"

    const-string v7, "Baskerville-Bold"

    const-string v8, "PMN Caecilia LT"

    const-string v9, "PMN Caecilia LT-Bold"

    const-string v10, "Georgia"

    const-string v11, "Georgia-Bold"

    const-string v12, "Helvetica"

    const-string v13, "Helvetica-Bold"

    const-string v14, "Palatino"

    const-string v15, "Palatino-Bold"

    const-string v16, "HiraKakuProN-W3"

    const-string v17, "HiraKakuProN-W6"

    const-string v18, "HiraMinProN-W3"

    const-string v19, "HiraMinProN-W6"

    const-string v20, "Heiti SC"

    .line 30
    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Reading"

    const-string v4, "Chrome"

    const-string v5, "Book"

    const-string v6, "Background"

    const-string v7, "ViewOptions"

    const-string v8, "BrightnessSetting"

    .line 50
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV7;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
