.class public final Lcom/amazon/kcp/library/sync/SyncIdentifier;
.super Ljava/lang/Object;
.source "SyncIdentifier.java"


# static fields
.field private static final AMZN_SCHEME:Ljava/lang/String; = "amzn"

.field private static final LOCAL_SCHEME:Ljava/lang/String; = "local"

.field private static final SEPARATOR:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private extendedId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isLocal:Z

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getSyncContentTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    .line 130
    instance-of v0, p1, Lcom/amazon/kindle/model/content/SideloadBookID;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    goto :goto_0

    .line 133
    :cond_0
    instance-of v0, p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    invoke-static {p1}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AmznBookID without ASIN not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create SyncIdentifier from unknown BookID type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 282
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 284
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTF-8 is an unsupported encoding scheme"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 274
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 276
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTF-8 is an unsupported encoding scheme"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getSyncContentTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 150
    sget-object v0, Lcom/amazon/kcp/library/sync/SyncIdentifier$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "BookType %s from metadata is unsupported to create a SyncID."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "AUDIOBOOK"

    return-object p0

    :pswitch_1
    const-string p0, "DOC"

    return-object p0

    :pswitch_2
    const-string p0, "PERIODICAL"

    return-object p0

    :pswitch_3
    const-string p0, "BOOKSAMPLE"

    return-object p0

    :pswitch_4
    const-string p0, "BOOK"

    return-object p0

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null BookType is not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Landroid/net/Uri;)Lcom/amazon/kcp/library/sync/SyncIdentifier;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/content/ContentException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;

    invoke-direct {v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const-string p0, "amzn"

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 54
    iput-boolean v4, v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    goto :goto_0

    :cond_0
    const-string p0, "local"

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 56
    iput-boolean v5, v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    :goto_0
    const-string p0, "+"

    .line 61
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 62
    iget-boolean v1, v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {v2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    add-int/2addr p0, v5

    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    goto :goto_1

    .line 66
    :cond_1
    iput-object v2, v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    .line 69
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    :cond_2
    return-object v0

    .line 58
    :cond_3
    new-instance p0, Lcom/amazon/kindle/content/ContentException;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    const-string v1, "Unknown scheme: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/ContentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_4
    new-instance v0, Lcom/amazon/kindle/content/ContentException;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "Invalid uri format: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kindle/content/ContentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 296
    :cond_1
    instance-of v2, p1, Lcom/amazon/kcp/library/sync/SyncIdentifier;

    if-nez v2, :cond_2

    return v0

    .line 300
    :cond_2
    check-cast p1, Lcom/amazon/kcp/library/sync/SyncIdentifier;

    .line 301
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    .line 302
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    iget-boolean v3, p1, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    .line 304
    invoke-static {v2, p1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getBookId(Lcom/amazon/kcp/library/IBookTypeFactory;)Ljava/lang/String;
    .locals 5

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocalContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BOOK"

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v2, "BOOKSAMPLE"

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "DOC"

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v2, "PERIODICAL"

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 255
    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/IBookTypeFactory;->getBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    .line 256
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 258
    :cond_4
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 259
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 262
    :cond_5
    sget-object p1, Lcom/amazon/kcp/library/sync/SyncIdentifier;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with content type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t resolve to any magazine or a newspaper."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v3
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 210
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 212
    iget-boolean v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    if-eqz v1, :cond_0

    const-string v1, "local"

    goto :goto_0

    :cond_0
    const-string v1, "amzn"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x24d

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 315
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 316
    iget-boolean v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 317
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public isLocalContent()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extendedId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->extendedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLocal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/sync/SyncIdentifier;->isLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
