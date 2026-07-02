.class public final enum Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;
.super Ljava/lang/Enum;
.source "BookImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/provider/BookImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

.field public static final enum CANCEL:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

.field public static final enum CLOSE_DOCUMENT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

.field public static final enum OPEN_DOCUMENT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

.field public static final enum RENDER_PAGE_CLIP:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

.field public static final enum RENDER_THUMBNAIL:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    const/4 v1, 0x0

    const-string v2, "OPEN_DOCUMENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->OPEN_DOCUMENT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    const/4 v2, 0x1

    const-string v3, "CLOSE_DOCUMENT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->CLOSE_DOCUMENT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    const/4 v3, 0x2

    const-string v4, "RENDER_THUMBNAIL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->RENDER_THUMBNAIL:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    const/4 v4, 0x3

    const-string v5, "RENDER_PAGE_CLIP"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->RENDER_PAGE_CLIP:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    const/4 v5, 0x4

    const-string v6, "CANCEL"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->CANCEL:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    .line 19
    sget-object v7, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->OPEN_DOCUMENT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->CLOSE_DOCUMENT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->RENDER_THUMBNAIL:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->RENDER_PAGE_CLIP:Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->$VALUES:[Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->$VALUES:[Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    return-object v0
.end method
