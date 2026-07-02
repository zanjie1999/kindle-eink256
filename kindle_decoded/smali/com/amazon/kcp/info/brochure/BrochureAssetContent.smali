.class public final enum Lcom/amazon/kcp/info/brochure/BrochureAssetContent;
.super Ljava/lang/Enum;
.source "BrochureAssetContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/info/brochure/BrochureAssetContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

.field public static final enum IMAGE_SHAREABLE:Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

.field public static final enum TEXT_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureAssetContent;


# instance fields
.field private brochureVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    const/4 v1, 0x0

    const-string v2, "TEXT_IMAGE"

    const-string/jumbo v3, "slideshow-notification-v1"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->TEXT_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    .line 18
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    const/4 v2, 0x1

    const-string v3, "IMAGE_SHAREABLE"

    const-string v4, "image-shareable-brochure-notification-v1"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->IMAGE_SHAREABLE:Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    .line 16
    sget-object v4, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->TEXT_IMAGE:Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->$VALUES:[Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->brochureVersion:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureAssetContent;
    .locals 5

    if-eqz p0, :cond_1

    .line 32
    invoke-static {}, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->values()[Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    iget-object v4, v3, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->brochureVersion:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureAssetContent;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/info/brochure/BrochureAssetContent;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->$VALUES:[Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    invoke-virtual {v0}, [Lcom/amazon/kcp/info/brochure/BrochureAssetContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/info/brochure/BrochureAssetContent;

    return-object v0
.end method
