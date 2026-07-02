.class Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;
.super Ljava/lang/Object;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StoreBookPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;
    }
.end annotation


# static fields
.field private static final AUTHORS_KEY:Ljava/lang/String; = "authors"

.field private static final BOOK_METADATA_PAYLOAD_KEY:Ljava/lang/String; = "bookMetadata"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"


# instance fields
.field public final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field public final metadata:Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "asin"

    .line 252
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "type"

    .line 253
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    const-string p1, ""

    const-string v1, "bookMetadata"

    .line 265
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "title"

    .line 271
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "authors"

    .line 272
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 274
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/store/BrowserHost;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing bookmetadata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;->metadata:Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;

    return-void

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "type cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "asin cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
