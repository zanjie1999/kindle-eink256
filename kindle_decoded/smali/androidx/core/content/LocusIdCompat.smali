.class public final Landroidx/core/content/LocusIdCompat;
.super Ljava/lang/Object;
.source "LocusIdCompat.java"


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mWrapped:Landroid/content/LocusId;


# direct methods
.method private getSanitizedId()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_chars"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 105
    :cond_1
    const-class v2, Landroidx/core/content/LocusIdCompat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 106
    :cond_2
    check-cast p1, Landroidx/core/content/LocusIdCompat;

    .line 107
    iget-object v2, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 108
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 110
    :cond_4
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toLocusId()Landroid/content/LocusId;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocusIdCompat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/core/content/LocusIdCompat;->getSanitizedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
