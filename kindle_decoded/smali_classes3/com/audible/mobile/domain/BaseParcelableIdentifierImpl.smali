.class public abstract Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.super Ljava/lang/Object;
.source "BaseParcelableIdentifierImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/domain/Identifier<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id cannot be null."

    .line 26
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final compareTo(Lcom/audible/mobile/domain/Identifier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/audible/mobile/domain/Identifier;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->compareTo(Lcom/audible/mobile/domain/Identifier;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 70
    :cond_1
    check-cast p1, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;

    .line 72
    iget-object v1, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget-object p2, p0, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
