.class public Lcom/amazon/rma/rs/encoding/strings/StringLists;
.super Ljava/lang/Object;
.source "StringLists.java"


# static fields
.field public static final TYPE_ACTION_ID:Ljava/lang/String; = "actionID"

.field public static final TYPE_AUX_CONTENT_TYPE:Ljava/lang/String; = "auxContentType"

.field public static final TYPE_CONTEXT:Ljava/lang/String; = "context"

.field public static final TYPE_METADATA_KEY:Ljava/lang/String; = "metadataKey"

.field public static final TYPE_METADATA_VALUE:Ljava/lang/String; = "metadataValue"

.field public static final TYPE_OTHER_VALUE:Ljava/lang/String; = "other"

.field public static final TYPE_POINT_TYPE:Ljava/lang/String; = "pointType"

.field public static final TYPE_SETTING_ID:Ljava/lang/String; = "settingID"

.field public static final TYPE_SETTING_VALUE:Ljava/lang/String; = "settingValue"

.field public static final TYPE_SPAN_TYPE:Ljava/lang/String; = "spanType"


# instance fields
.field public final typeToStringArray:Ljava/util/Map;

.field public final version:I


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/amazon/rma/rs/encoding/strings/StringLists;->version:I

    .line 27
    iput-object p2, p0, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StringLists[ version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/amazon/rma/rs/encoding/strings/StringLists;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
