.class public Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;
.super Ljava/lang/Object;
.source "CoverLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/CoverLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageKey"
.end annotation


# instance fields
.field private final imagePath:Ljava/lang/String;

.field position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->imagePath:Ljava/lang/String;

    .line 239
    iput p2, p0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->imagePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 253
    instance-of v0, p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->imagePath:Ljava/lang/String;

    check-cast p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    iget-object p1, p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->imagePath:Ljava/lang/String;

    return-object v0
.end method
