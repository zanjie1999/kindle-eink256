.class public final enum Lcom/audible/mobile/bookmarks/domain/BookmarkType;
.super Ljava/lang/Enum;
.source "BookmarkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/bookmarks/domain/BookmarkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/bookmarks/domain/BookmarkType;

.field public static final enum Bookmark:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

.field public static final enum Clip:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

.field public static final enum LPH:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

.field public static final enum RemoteLPH:Lcom/audible/mobile/bookmarks/domain/BookmarkType;


# instance fields
.field private final jsonValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    const-string v1, "audible.bookmark"

    const-string v2, "audible.note"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Bookmark"

    invoke-direct {v0, v3, v2, v1}, Lcom/audible/mobile/bookmarks/domain/BookmarkType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->Bookmark:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    new-instance v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "LPH"

    invoke-direct {v0, v4, v3, v1}, Lcom/audible/mobile/bookmarks/domain/BookmarkType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->LPH:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    new-instance v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    const-string v1, "audible.lph"

    const-string v4, "audible.last_heard"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "RemoteLPH"

    invoke-direct {v0, v5, v4, v1}, Lcom/audible/mobile/bookmarks/domain/BookmarkType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->RemoteLPH:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    new-instance v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    const-string v1, "audible.clip"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    const-string v6, "Clip"

    invoke-direct {v0, v6, v5, v1}, Lcom/audible/mobile/bookmarks/domain/BookmarkType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->Clip:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    .line 14
    sget-object v6, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->Bookmark:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->LPH:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->RemoteLPH:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->$VALUES:[Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->jsonValues:Ljava/util/HashSet;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/bookmarks/domain/BookmarkType;
    .locals 1

    .line 14
    const-class v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/bookmarks/domain/BookmarkType;
    .locals 1

    .line 14
    sget-object v0, Lcom/audible/mobile/bookmarks/domain/BookmarkType;->$VALUES:[Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    invoke-virtual {v0}, [Lcom/audible/mobile/bookmarks/domain/BookmarkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    return-object v0
.end method
