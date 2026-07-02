.class public final enum Lcom/amazon/kindle/cms/api/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum ACTION:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum ACTIVITY:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum AD:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum APP:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum AUDIO_BOOK:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum BOOK:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum COLLECTION:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum CONTACT:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum DOC:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum MUSIC:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum NOTE:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum PERIODICAL:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum PHOTO:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum SIMILARITY:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum STORE:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum VIDEO:Lcom/amazon/kindle/cms/api/ItemType;

.field public static final enum WEB:Lcom/amazon/kindle/cms/api/ItemType;


# instance fields
.field private final m_value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v1, 0x0

    const-string v2, "BOOK"

    const-string v3, "kindle.content.books"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->BOOK:Lcom/amazon/kindle/cms/api/ItemType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v2, 0x1

    const-string v3, "DOC"

    const-string v4, "kindle.content.docs"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->DOC:Lcom/amazon/kindle/cms/api/ItemType;

    .line 14
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v3, 0x2

    const-string v4, "PERIODICAL"

    const-string v5, "kindle.content.periodicals"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->PERIODICAL:Lcom/amazon/kindle/cms/api/ItemType;

    .line 15
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v4, 0x3

    const-string v5, "VIDEO"

    const-string v6, "kindle.content.videos"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->VIDEO:Lcom/amazon/kindle/cms/api/ItemType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v5, 0x4

    const-string v6, "WEB"

    const-string v7, "kindle.content.web"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->WEB:Lcom/amazon/kindle/cms/api/ItemType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v6, 0x5

    const-string v7, "MUSIC"

    const-string v8, "kindle.content.music"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->MUSIC:Lcom/amazon/kindle/cms/api/ItemType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v7, 0x6

    const-string v8, "SIMILARITY"

    const-string v9, "kindle.content.similarity"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->SIMILARITY:Lcom/amazon/kindle/cms/api/ItemType;

    .line 19
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/4 v8, 0x7

    const-string v9, "PHOTO"

    const-string v10, "kindle.content.photos"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->PHOTO:Lcom/amazon/kindle/cms/api/ItemType;

    .line 20
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v9, 0x8

    const-string v10, "AD"

    const-string v11, "kindle.content.ads"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->AD:Lcom/amazon/kindle/cms/api/ItemType;

    .line 21
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v10, 0x9

    const-string v11, "AUDIO_BOOK"

    const-string v12, "kindle.content.audiobooks"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->AUDIO_BOOK:Lcom/amazon/kindle/cms/api/ItemType;

    .line 22
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v11, 0xa

    const-string v12, "APP"

    const-string v13, "kindle.content.apps"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->APP:Lcom/amazon/kindle/cms/api/ItemType;

    .line 23
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v12, 0xb

    const-string v13, "ACTIVITY"

    const-string v14, "kindle.content.activity"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->ACTIVITY:Lcom/amazon/kindle/cms/api/ItemType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v13, 0xc

    const-string v14, "COLLECTION"

    const-string v15, "kindle.content.collections"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->COLLECTION:Lcom/amazon/kindle/cms/api/ItemType;

    .line 25
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v14, 0xd

    const-string v15, "CONTACT"

    const-string v13, "kindle.content.contacts"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->CONTACT:Lcom/amazon/kindle/cms/api/ItemType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v13, 0xe

    const-string v15, "ACTION"

    const-string v14, "kindle.content.actions"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->ACTION:Lcom/amazon/kindle/cms/api/ItemType;

    .line 27
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v14, 0xf

    const-string v15, "STORE"

    const-string v13, "kindle.content.stores"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->STORE:Lcom/amazon/kindle/cms/api/ItemType;

    .line 28
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v13, 0x10

    const-string v15, "NOTE"

    const-string v14, "kindle.content.notes"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/cms/api/ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemType;->NOTE:Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v14, 0x11

    new-array v14, v14, [Lcom/amazon/kindle/cms/api/ItemType;

    .line 10
    sget-object v15, Lcom/amazon/kindle/cms/api/ItemType;->BOOK:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->DOC:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->PERIODICAL:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->VIDEO:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->WEB:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->MUSIC:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->SIMILARITY:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->PHOTO:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->AD:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->AUDIO_BOOK:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->APP:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->ACTIVITY:Lcom/amazon/kindle/cms/api/ItemType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->COLLECTION:Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->CONTACT:Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->ACTION:Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemType;->STORE:Lcom/amazon/kindle/cms/api/ItemType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/kindle/cms/api/ItemType;->$VALUES:[Lcom/amazon/kindle/cms/api/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/amazon/kindle/cms/api/ItemType;->m_value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/ItemType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/cms/api/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/ItemType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/ItemType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/cms/api/ItemType;->$VALUES:[Lcom/amazon/kindle/cms/api/ItemType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/ItemType;

    return-object v0
.end method


# virtual methods
.method getUri()Landroid/net/Uri;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/ItemType;->m_value:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/ItemType;->m_value:Ljava/lang/String;

    return-object v0
.end method
