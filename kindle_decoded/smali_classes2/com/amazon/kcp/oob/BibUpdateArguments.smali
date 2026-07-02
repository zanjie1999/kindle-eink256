.class public final Lcom/amazon/kcp/oob/BibUpdateArguments;
.super Ljava/lang/Object;
.source "BibUpdateArguments.kt"


# instance fields
.field private final bibImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final contentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "contentDescription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->contentDescription:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->bibImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/oob/BibUpdateArguments;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/oob/BibUpdateArguments;

    iget-object v0, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->contentDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/oob/BibUpdateArguments;->contentDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->bibImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/amazon/kcp/oob/BibUpdateArguments;->bibImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBibImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->bibImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getContentDescription()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->contentDescription:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->bibImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BibUpdateArguments(contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bibImageDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/oob/BibUpdateArguments;->bibImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
