.class Lcom/amazon/kcp/store/BrowserHost$StoreBookData;
.super Ljava/lang/Object;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StoreBookData"
.end annotation


# static fields
.field private static final ASIN_KEY:Ljava/lang/String; = "asin"

.field private static final BOOK_TYPE_KEY:Ljava/lang/String; = "bookType"

.field private static final FALKOR_KEY:Ljava/lang/String; = "isShortStory"

.field private static final SKIP_SMD_KEY:Ljava/lang/String; = "skipOwnership"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field public final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field public final isFalkorEpisode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "asin"

    .line 313
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bookType"

    .line 314
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "type"

    .line 316
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 321
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookData;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    const-string p1, "isShortStory"

    .line 324
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookData;->isFalkorEpisode:Ljava/lang/Boolean;

    const-string p1, "skipOwnership"

    .line 325
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    return-void

    .line 319
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "asin and bookType cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
